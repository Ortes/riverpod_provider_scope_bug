import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_providerscope_bug/utils.dart';

part 'providers.g.dart';

const hitPerPage = 20;

@riverpod
class SearchTextState extends _$SearchTextState {
  @override
  String build() {
    ref.onDispose(() {
      print('SearchTextState disposed');
    });
    return '';
  }

  void set(String text) {
    state = text;
  }
}

@riverpod
FutureOr<String> searchTextDebounced(SearchTextDebouncedRef ref) {
  var disposed = false;
  ref.onDispose(() {
    disposed = true;
  });

  final text = ref.watch(searchTextStateProvider);
  if (text.isEmpty) {
    return '';
  }

  return Future.delayed(const Duration(milliseconds: 1000)).then((_) {
    if (disposed) {
      throw StateError('Debounced');
    }

    return text;
  });
}

@Riverpod(keepAlive: true)
Future<SearchResponse> _algoliaSearch(
  _AlgoliaSearchRef ref,
  String searchText,
  int page,
  String type,
) async {
  print('searching for $searchText');
  await Future.delayed(const Duration(milliseconds: 200));
  return SearchResponse(["42"]);
}

@riverpod
Future<SearchResponse> _searchResponsePage(
  _SearchResponsePageRef ref,
  int page,
  String type,
) async {
  final searchText = await ref.watch(searchTextDebouncedProvider.future);
  return await ref.watch(_algoliaSearchProvider(searchText, page, type).future);
}

@riverpod
Future<String> searchResultAt(
  SearchResultAtRef ref,
  int index,
  String type,
) async {
  final searchResponse = await ref.watch(_searchResponsePageProvider(index ~/ hitPerPage, type).future);
  return searchResponse.hits[index % hitPerPage];
}

@riverpod
Future<int> searchResultCount(
  SearchResultCountRef ref,
  String type,
) async {
  final searchResponse = await ref.watch(_searchResponsePageProvider(0, type).future);
  return searchResponse.nbHits;
}

@Riverpod(keepAlive: true)
Future<List<ChildItem>> getAllChildItems(GetAllChildItemsRef ref) async {
  return [
    ChildItem("42", "Item 42"),
    ChildItem("43", "Item 43"),
  ];
}

@Riverpod(dependencies: [])
Future<List<Item>> getAllResources(GetAllResourcesRef ref) async {
  throw UnimplementedError('Please override this provider');
}

@Riverpod(dependencies: [])
String getResourceType(GetResourceTypeRef ref) {
  throw UnimplementedError('Please override this provider');
}

@Riverpod(dependencies: [getResourceType, getAllResources])
Future<Item> resourcesSearchResultAt(ResourcesSearchResultAtRef ref, int index) async {
  final type = ref.watch(getResourceTypeProvider);
  final id = await ref.watch(searchResultAtProvider(index, type).future);
  final resources = await ref.watch(getAllResourcesProvider.future);
  try {
    return resources.firstWhere((e) => e.id == id);
  } catch (e) {
    throw Exception('Resource not found $id not found');
  }
}

@Riverpod(dependencies: [getResourceType])
Future<int> resourcesCount(ResourcesCountRef ref) async {
  final type = ref.watch(getResourceTypeProvider);
  return await ref.watch(searchResultCountProvider(type).future);
}
