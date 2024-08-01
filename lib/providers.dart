import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.freezed.dart';

part 'providers.g.dart';

const hitPerPage = 20;


@Riverpod(dependencies: [])
class SearchTextState extends _$SearchTextState {
  @override
  String build() {
    return '';
  }

  void set(String text) {
    state = text;
  }
}

@Riverpod(dependencies: [SearchTextState])
FutureOr<String> searchTextDebounced(SearchTextDebouncedRef ref) {
  var disposed = false;
  ref.onDispose(() {
    print('disposed');
    disposed = true;
  });

  final text = ref.watch(searchTextStateProvider);
  if (text.isEmpty) {
    return '';
  }

  return Future.delayed(const Duration(milliseconds: 2000)).then((_) {
    print('debounced $disposed');
    if (disposed) {
      throw StateError('Debounced');
    }

    return text;
  });
}

@Riverpod()
class SearchFilterManager extends _$SearchFilterManager {
  @override
  SearchManagerState build() {
    return const SearchManagerState();
  }

  void addFilter(AlgoliaFilter filter) {
    final filterType = filter.filterType;
    state = state.copyWith(filters: {
      ...state.filters,
      filterType: {...state.filters[filterType] ?? {}, filter},
    });
  }

  void removeFilter(AlgoliaFilter filter) {
    state = state.copyWith(filters: {
      for (final entry in state.filters.entries)
        if (entry.value.contains(filter))
          entry.key: entry.value.where((f) => f != filter).toSet()
        else
          entry.key: entry.value
    });
  }

  void toggleFilter(AlgoliaFilter filter) {
    if (state.filters[filter.filterType]?.contains(filter) ?? false) {
      removeFilter(filter);
    } else {
      addFilter(filter);
    }
  }

  void setForFilter(AlgoliaFilterType filterType, Set<AlgoliaFilter> filters) {
    state = state.copyWith(filters: {
      ...state.filters,
      filterType: filters,
    });
  }

  void clearForFilter(AlgoliaFilterType filterType) {
    setForFilter(filterType, {});
  }
}

@Riverpod(keepAlive: true)
Future<SearchResponse> _algoliaSearch(
    _AlgoliaSearchRef ref,
    String searchText,
    SearchManagerState searchManagerState,
    int page,
    String indexName,
    ResourceType? type,
    ) async {
  final user = ref.watch(currentUserProvider);
  print('searching for $searchText filters: ${searchManagerState.toFacetFilters()}');
  final queryHits = SearchForHits(
    indexName: indexName,
    query: searchText,
    attributesToRetrieve: ['objectID'],
    facets: ['*'],
    facetFilters: [
      ...searchManagerState.toFacetFilters(),
      if (type != null) ['_type:${type.sanityKey}'],
    ],
    hitsPerPage: hitPerPage,
    page: page,
    optionalFilters: user.hasPremiumPlan() ? null : ['openTo:all'],
  );

  return await algoliaClient.searchIndex(request: queryHits);
}

@Riverpod()
Future<SearchResponse> _searchResponsePage(
    _SearchResponsePageRef ref,
    int page,
    String indexName,
    ResourceType? type,
    ) async {
  final searchText = await ref.watch(searchTextDebouncedProvider.future);
  final searchManagerState = ref.watch(searchFilterManagerProvider);
  return await ref.watch(_algoliaSearchProvider(searchText, searchManagerState, page, indexName, type).future);
}

@Riverpod()
Future<String> searchResultAt(
    SearchResultAtRef ref,
    int index,
    String indexName,
    ResourceType? type,
    ) async {
  final searchResponse = await ref.watch(_searchResponsePageProvider(index ~/ hitPerPage, indexName, type).future);
  return searchResponse.hits[index % hitPerPage].objectID;
}

@Riverpod()
Future<int> searchResultFacetCount(
    SearchResultFacetCountRef ref,
    AlgoliaFilter filter,
    String indexName,
    ResourceType? type,
    ) async {
  final searchResponse = await ref.watch(_searchResponsePageProvider(0, indexName, type).future);
  final facetMap = searchResponse.facets![filter.filterType.algoliaKey]!;
  for (final facet in facetMap.entries) {
    if (facet.key == filter.id) {
      return facet.value;
    }
  }
  return 0;
}

@Riverpod()
FutureOr<int> searchResultCount(
    SearchResultCountRef ref,
    String indexName,
    ResourceType? type,
    ) async {
  final searchResponse = await ref.watch(_searchResponsePageProvider(0, indexName, type).future);
  return searchResponse.nbHits;
}

@freezed
class SearchManagerState with _$SearchManagerState {
  const SearchManagerState._();

  const factory SearchManagerState({
    @Default({}) Map<AlgoliaFilterType, Set<AlgoliaFilter>> filters,
  }) = _SearchManagerState;

  List<List<String>> toFacetFilters() {
    final algoliaFacetFilters = <List<String>>[];
    for (final filter in AlgoliaFilterType.all) {
      final typeFilters = filters[filter] ?? {};
      if (typeFilters.isNotEmpty) {
        algoliaFacetFilters.add(typeFilters.map((f) => '${filter.algoliaKey}:${f.id}').toList());
      }
    }
    return algoliaFacetFilters;
  }

  bool contains(AlgoliaFilter filter) {
    return (filters[filter.filterType] ?? {}).contains(filter);
  }

  List<AlgoliaFilter> allFilters() {
    return filters.values.fold<List<AlgoliaFilter>>([], (a, e) => [...a, ...e]);
  }
}
