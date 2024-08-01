// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchTextDebouncedHash() =>
    r'a86dfca17806894518070052cd8563d344b8f61e';

/// See also [searchTextDebounced].
@ProviderFor(searchTextDebounced)
final searchTextDebouncedProvider = AutoDisposeFutureProvider<String>.internal(
  searchTextDebounced,
  name: r'searchTextDebouncedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchTextDebouncedHash,
  dependencies: <ProviderOrFamily>[searchTextStateProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    searchTextStateProvider,
    ...?searchTextStateProvider.allTransitiveDependencies
  },
);

typedef SearchTextDebouncedRef = AutoDisposeFutureProviderRef<String>;
String _$algoliaSearchHash() => r'3b32815c9b28df1bdca9d8af822267305eea1dc9';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [_algoliaSearch].
@ProviderFor(_algoliaSearch)
const _algoliaSearchProvider = _AlgoliaSearchFamily();

/// See also [_algoliaSearch].
class _AlgoliaSearchFamily extends Family<AsyncValue<SearchResponse>> {
  /// See also [_algoliaSearch].
  const _AlgoliaSearchFamily();

  /// See also [_algoliaSearch].
  _AlgoliaSearchProvider call(
    String searchText,
    SearchManagerState searchManagerState,
    int page,
    String indexName,
    InvalidType type,
  ) {
    return _AlgoliaSearchProvider(
      searchText,
      searchManagerState,
      page,
      indexName,
      type,
    );
  }

  @override
  _AlgoliaSearchProvider getProviderOverride(
    covariant _AlgoliaSearchProvider provider,
  ) {
    return call(
      provider.searchText,
      provider.searchManagerState,
      provider.page,
      provider.indexName,
      provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'_algoliaSearchProvider';
}

/// See also [_algoliaSearch].
class _AlgoliaSearchProvider extends FutureProvider<SearchResponse> {
  /// See also [_algoliaSearch].
  _AlgoliaSearchProvider(
    String searchText,
    SearchManagerState searchManagerState,
    int page,
    String indexName,
    InvalidType type,
  ) : this._internal(
          (ref) => _algoliaSearch(
            ref as _AlgoliaSearchRef,
            searchText,
            searchManagerState,
            page,
            indexName,
            type,
          ),
          from: _algoliaSearchProvider,
          name: r'_algoliaSearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$algoliaSearchHash,
          dependencies: _AlgoliaSearchFamily._dependencies,
          allTransitiveDependencies:
              _AlgoliaSearchFamily._allTransitiveDependencies,
          searchText: searchText,
          searchManagerState: searchManagerState,
          page: page,
          indexName: indexName,
          type: type,
        );

  _AlgoliaSearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.searchText,
    required this.searchManagerState,
    required this.page,
    required this.indexName,
    required this.type,
  }) : super.internal();

  final String searchText;
  final SearchManagerState searchManagerState;
  final int page;
  final String indexName;
  final InvalidType type;

  @override
  Override overrideWith(
    FutureOr<SearchResponse> Function(_AlgoliaSearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _AlgoliaSearchProvider._internal(
        (ref) => create(ref as _AlgoliaSearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        searchText: searchText,
        searchManagerState: searchManagerState,
        page: page,
        indexName: indexName,
        type: type,
      ),
    );
  }

  @override
  FutureProviderElement<SearchResponse> createElement() {
    return _AlgoliaSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _AlgoliaSearchProvider &&
        other.searchText == searchText &&
        other.searchManagerState == searchManagerState &&
        other.page == page &&
        other.indexName == indexName &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchText.hashCode);
    hash = _SystemHash.combine(hash, searchManagerState.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, indexName.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _AlgoliaSearchRef on FutureProviderRef<SearchResponse> {
  /// The parameter `searchText` of this provider.
  String get searchText;

  /// The parameter `searchManagerState` of this provider.
  SearchManagerState get searchManagerState;

  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `indexName` of this provider.
  String get indexName;

  /// The parameter `type` of this provider.
  InvalidType get type;
}

class _AlgoliaSearchProviderElement
    extends FutureProviderElement<SearchResponse> with _AlgoliaSearchRef {
  _AlgoliaSearchProviderElement(super.provider);

  @override
  String get searchText => (origin as _AlgoliaSearchProvider).searchText;
  @override
  SearchManagerState get searchManagerState =>
      (origin as _AlgoliaSearchProvider).searchManagerState;
  @override
  int get page => (origin as _AlgoliaSearchProvider).page;
  @override
  String get indexName => (origin as _AlgoliaSearchProvider).indexName;
  @override
  InvalidType get type => (origin as _AlgoliaSearchProvider).type;
}

String _$searchResponsePageHash() =>
    r'57cb15abc1ff5eb35a5fda8ef3fd68f1ea708b44';

/// See also [_searchResponsePage].
@ProviderFor(_searchResponsePage)
const _searchResponsePageProvider = _SearchResponsePageFamily();

/// See also [_searchResponsePage].
class _SearchResponsePageFamily extends Family<AsyncValue<SearchResponse>> {
  /// See also [_searchResponsePage].
  const _SearchResponsePageFamily();

  /// See also [_searchResponsePage].
  _SearchResponsePageProvider call(
    int page,
    String indexName,
    InvalidType type,
  ) {
    return _SearchResponsePageProvider(
      page,
      indexName,
      type,
    );
  }

  @override
  _SearchResponsePageProvider getProviderOverride(
    covariant _SearchResponsePageProvider provider,
  ) {
    return call(
      provider.page,
      provider.indexName,
      provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'_searchResponsePageProvider';
}

/// See also [_searchResponsePage].
class _SearchResponsePageProvider
    extends AutoDisposeFutureProvider<SearchResponse> {
  /// See also [_searchResponsePage].
  _SearchResponsePageProvider(
    int page,
    String indexName,
    InvalidType type,
  ) : this._internal(
          (ref) => _searchResponsePage(
            ref as _SearchResponsePageRef,
            page,
            indexName,
            type,
          ),
          from: _searchResponsePageProvider,
          name: r'_searchResponsePageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchResponsePageHash,
          dependencies: _SearchResponsePageFamily._dependencies,
          allTransitiveDependencies:
              _SearchResponsePageFamily._allTransitiveDependencies,
          page: page,
          indexName: indexName,
          type: type,
        );

  _SearchResponsePageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.indexName,
    required this.type,
  }) : super.internal();

  final int page;
  final String indexName;
  final InvalidType type;

  @override
  Override overrideWith(
    FutureOr<SearchResponse> Function(_SearchResponsePageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _SearchResponsePageProvider._internal(
        (ref) => create(ref as _SearchResponsePageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        indexName: indexName,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SearchResponse> createElement() {
    return _SearchResponsePageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _SearchResponsePageProvider &&
        other.page == page &&
        other.indexName == indexName &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, indexName.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _SearchResponsePageRef on AutoDisposeFutureProviderRef<SearchResponse> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `indexName` of this provider.
  String get indexName;

  /// The parameter `type` of this provider.
  InvalidType get type;
}

class _SearchResponsePageProviderElement
    extends AutoDisposeFutureProviderElement<SearchResponse>
    with _SearchResponsePageRef {
  _SearchResponsePageProviderElement(super.provider);

  @override
  int get page => (origin as _SearchResponsePageProvider).page;
  @override
  String get indexName => (origin as _SearchResponsePageProvider).indexName;
  @override
  InvalidType get type => (origin as _SearchResponsePageProvider).type;
}

String _$searchResultAtHash() => r'24682c25a0df45e779d3b9a30c1cd9a56dabd30b';

/// See also [searchResultAt].
@ProviderFor(searchResultAt)
const searchResultAtProvider = SearchResultAtFamily();

/// See also [searchResultAt].
class SearchResultAtFamily extends Family<AsyncValue<String>> {
  /// See also [searchResultAt].
  const SearchResultAtFamily();

  /// See also [searchResultAt].
  SearchResultAtProvider call(
    int index,
    String indexName,
    InvalidType type,
  ) {
    return SearchResultAtProvider(
      index,
      indexName,
      type,
    );
  }

  @override
  SearchResultAtProvider getProviderOverride(
    covariant SearchResultAtProvider provider,
  ) {
    return call(
      provider.index,
      provider.indexName,
      provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchResultAtProvider';
}

/// See also [searchResultAt].
class SearchResultAtProvider extends AutoDisposeFutureProvider<String> {
  /// See also [searchResultAt].
  SearchResultAtProvider(
    int index,
    String indexName,
    InvalidType type,
  ) : this._internal(
          (ref) => searchResultAt(
            ref as SearchResultAtRef,
            index,
            indexName,
            type,
          ),
          from: searchResultAtProvider,
          name: r'searchResultAtProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchResultAtHash,
          dependencies: SearchResultAtFamily._dependencies,
          allTransitiveDependencies:
              SearchResultAtFamily._allTransitiveDependencies,
          index: index,
          indexName: indexName,
          type: type,
        );

  SearchResultAtProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
    required this.indexName,
    required this.type,
  }) : super.internal();

  final int index;
  final String indexName;
  final InvalidType type;

  @override
  Override overrideWith(
    FutureOr<String> Function(SearchResultAtRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchResultAtProvider._internal(
        (ref) => create(ref as SearchResultAtRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
        indexName: indexName,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _SearchResultAtProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchResultAtProvider &&
        other.index == index &&
        other.indexName == indexName &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, indexName.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchResultAtRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `indexName` of this provider.
  String get indexName;

  /// The parameter `type` of this provider.
  InvalidType get type;
}

class _SearchResultAtProviderElement
    extends AutoDisposeFutureProviderElement<String> with SearchResultAtRef {
  _SearchResultAtProviderElement(super.provider);

  @override
  int get index => (origin as SearchResultAtProvider).index;
  @override
  String get indexName => (origin as SearchResultAtProvider).indexName;
  @override
  InvalidType get type => (origin as SearchResultAtProvider).type;
}

String _$searchResultFacetCountHash() =>
    r'b06fa8a33da53bd3b5ff709e0b92a470c20605ba';

/// See also [searchResultFacetCount].
@ProviderFor(searchResultFacetCount)
const searchResultFacetCountProvider = SearchResultFacetCountFamily();

/// See also [searchResultFacetCount].
class SearchResultFacetCountFamily extends Family<AsyncValue<int>> {
  /// See also [searchResultFacetCount].
  const SearchResultFacetCountFamily();

  /// See also [searchResultFacetCount].
  SearchResultFacetCountProvider call(
    InvalidType filter,
    String indexName,
    InvalidType type,
  ) {
    return SearchResultFacetCountProvider(
      filter,
      indexName,
      type,
    );
  }

  @override
  SearchResultFacetCountProvider getProviderOverride(
    covariant SearchResultFacetCountProvider provider,
  ) {
    return call(
      provider.filter,
      provider.indexName,
      provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchResultFacetCountProvider';
}

/// See also [searchResultFacetCount].
class SearchResultFacetCountProvider extends AutoDisposeFutureProvider<int> {
  /// See also [searchResultFacetCount].
  SearchResultFacetCountProvider(
    InvalidType filter,
    String indexName,
    InvalidType type,
  ) : this._internal(
          (ref) => searchResultFacetCount(
            ref as SearchResultFacetCountRef,
            filter,
            indexName,
            type,
          ),
          from: searchResultFacetCountProvider,
          name: r'searchResultFacetCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchResultFacetCountHash,
          dependencies: SearchResultFacetCountFamily._dependencies,
          allTransitiveDependencies:
              SearchResultFacetCountFamily._allTransitiveDependencies,
          filter: filter,
          indexName: indexName,
          type: type,
        );

  SearchResultFacetCountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filter,
    required this.indexName,
    required this.type,
  }) : super.internal();

  final InvalidType filter;
  final String indexName;
  final InvalidType type;

  @override
  Override overrideWith(
    FutureOr<int> Function(SearchResultFacetCountRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchResultFacetCountProvider._internal(
        (ref) => create(ref as SearchResultFacetCountRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filter: filter,
        indexName: indexName,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _SearchResultFacetCountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchResultFacetCountProvider &&
        other.filter == filter &&
        other.indexName == indexName &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);
    hash = _SystemHash.combine(hash, indexName.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchResultFacetCountRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `filter` of this provider.
  InvalidType get filter;

  /// The parameter `indexName` of this provider.
  String get indexName;

  /// The parameter `type` of this provider.
  InvalidType get type;
}

class _SearchResultFacetCountProviderElement
    extends AutoDisposeFutureProviderElement<int>
    with SearchResultFacetCountRef {
  _SearchResultFacetCountProviderElement(super.provider);

  @override
  InvalidType get filter => (origin as SearchResultFacetCountProvider).filter;
  @override
  String get indexName => (origin as SearchResultFacetCountProvider).indexName;
  @override
  InvalidType get type => (origin as SearchResultFacetCountProvider).type;
}

String _$searchResultCountHash() => r'f64ca4cc6793c3ad070f3f077ed0af541c6201a9';

/// See also [searchResultCount].
@ProviderFor(searchResultCount)
const searchResultCountProvider = SearchResultCountFamily();

/// See also [searchResultCount].
class SearchResultCountFamily extends Family<AsyncValue<int>> {
  /// See also [searchResultCount].
  const SearchResultCountFamily();

  /// See also [searchResultCount].
  SearchResultCountProvider call(
    String indexName,
    InvalidType type,
  ) {
    return SearchResultCountProvider(
      indexName,
      type,
    );
  }

  @override
  SearchResultCountProvider getProviderOverride(
    covariant SearchResultCountProvider provider,
  ) {
    return call(
      provider.indexName,
      provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchResultCountProvider';
}

/// See also [searchResultCount].
class SearchResultCountProvider extends AutoDisposeFutureProvider<int> {
  /// See also [searchResultCount].
  SearchResultCountProvider(
    String indexName,
    InvalidType type,
  ) : this._internal(
          (ref) => searchResultCount(
            ref as SearchResultCountRef,
            indexName,
            type,
          ),
          from: searchResultCountProvider,
          name: r'searchResultCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchResultCountHash,
          dependencies: SearchResultCountFamily._dependencies,
          allTransitiveDependencies:
              SearchResultCountFamily._allTransitiveDependencies,
          indexName: indexName,
          type: type,
        );

  SearchResultCountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.indexName,
    required this.type,
  }) : super.internal();

  final String indexName;
  final InvalidType type;

  @override
  Override overrideWith(
    FutureOr<int> Function(SearchResultCountRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchResultCountProvider._internal(
        (ref) => create(ref as SearchResultCountRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        indexName: indexName,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _SearchResultCountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchResultCountProvider &&
        other.indexName == indexName &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, indexName.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchResultCountRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `indexName` of this provider.
  String get indexName;

  /// The parameter `type` of this provider.
  InvalidType get type;
}

class _SearchResultCountProviderElement
    extends AutoDisposeFutureProviderElement<int> with SearchResultCountRef {
  _SearchResultCountProviderElement(super.provider);

  @override
  String get indexName => (origin as SearchResultCountProvider).indexName;
  @override
  InvalidType get type => (origin as SearchResultCountProvider).type;
}

String _$searchTextStateHash() => r'6a67370821eb82dfcbda2be6903b735ef2fee35d';

/// See also [SearchTextState].
@ProviderFor(SearchTextState)
final searchTextStateProvider =
    AutoDisposeNotifierProvider<SearchTextState, String>.internal(
  SearchTextState.new,
  name: r'searchTextStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchTextStateHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef _$SearchTextState = AutoDisposeNotifier<String>;
String _$searchFilterManagerHash() =>
    r'f008d186c2c8e1a260ac99a989c7b8c90750e663';

/// See also [SearchFilterManager].
@ProviderFor(SearchFilterManager)
final searchFilterManagerProvider = AutoDisposeNotifierProvider<
    SearchFilterManager, SearchManagerState>.internal(
  SearchFilterManager.new,
  name: r'searchFilterManagerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchFilterManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchFilterManager = AutoDisposeNotifier<SearchManagerState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
