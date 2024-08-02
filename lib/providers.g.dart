// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchTextDebouncedHash() =>
    r'b6bb44cd669e4d305ff21f69cd7c73cf9d54521a';

/// See also [searchTextDebounced].
@ProviderFor(searchTextDebounced)
final searchTextDebouncedProvider = AutoDisposeFutureProvider<String>.internal(
  searchTextDebounced,
  name: r'searchTextDebouncedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchTextDebouncedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchTextDebouncedRef = AutoDisposeFutureProviderRef<String>;
String _$algoliaSearchHash() => r'e2ad6920e90d263c2ca5344e13498592d0d1346d';

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
    SearchFilterManagerState searchFilterManagerState,
    int page,
    String type,
  ) {
    return _AlgoliaSearchProvider(
      searchText,
      searchFilterManagerState,
      page,
      type,
    );
  }

  @override
  _AlgoliaSearchProvider getProviderOverride(
    covariant _AlgoliaSearchProvider provider,
  ) {
    return call(
      provider.searchText,
      provider.searchFilterManagerState,
      provider.page,
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
    SearchFilterManagerState searchFilterManagerState,
    int page,
    String type,
  ) : this._internal(
          (ref) => _algoliaSearch(
            ref as _AlgoliaSearchRef,
            searchText,
            searchFilterManagerState,
            page,
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
          searchFilterManagerState: searchFilterManagerState,
          page: page,
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
    required this.searchFilterManagerState,
    required this.page,
    required this.type,
  }) : super.internal();

  final String searchText;
  final SearchFilterManagerState searchFilterManagerState;
  final int page;
  final String type;

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
        searchFilterManagerState: searchFilterManagerState,
        page: page,
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
        other.searchFilterManagerState == searchFilterManagerState &&
        other.page == page &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchText.hashCode);
    hash = _SystemHash.combine(hash, searchFilterManagerState.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _AlgoliaSearchRef on FutureProviderRef<SearchResponse> {
  /// The parameter `searchText` of this provider.
  String get searchText;

  /// The parameter `searchFilterManagerState` of this provider.
  SearchFilterManagerState get searchFilterManagerState;

  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `type` of this provider.
  String get type;
}

class _AlgoliaSearchProviderElement
    extends FutureProviderElement<SearchResponse> with _AlgoliaSearchRef {
  _AlgoliaSearchProviderElement(super.provider);

  @override
  String get searchText => (origin as _AlgoliaSearchProvider).searchText;
  @override
  SearchFilterManagerState get searchFilterManagerState =>
      (origin as _AlgoliaSearchProvider).searchFilterManagerState;
  @override
  int get page => (origin as _AlgoliaSearchProvider).page;
  @override
  String get type => (origin as _AlgoliaSearchProvider).type;
}

String _$searchResponsePageHash() =>
    r'a4310124b16b922702aa63d87136c999019397d6';

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
    String type,
  ) {
    return _SearchResponsePageProvider(
      page,
      type,
    );
  }

  @override
  _SearchResponsePageProvider getProviderOverride(
    covariant _SearchResponsePageProvider provider,
  ) {
    return call(
      provider.page,
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
    String type,
  ) : this._internal(
          (ref) => _searchResponsePage(
            ref as _SearchResponsePageRef,
            page,
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
    required this.type,
  }) : super.internal();

  final int page;
  final String type;

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
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _SearchResponsePageRef on AutoDisposeFutureProviderRef<SearchResponse> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `type` of this provider.
  String get type;
}

class _SearchResponsePageProviderElement
    extends AutoDisposeFutureProviderElement<SearchResponse>
    with _SearchResponsePageRef {
  _SearchResponsePageProviderElement(super.provider);

  @override
  int get page => (origin as _SearchResponsePageProvider).page;
  @override
  String get type => (origin as _SearchResponsePageProvider).type;
}

String _$searchResultAtHash() => r'5a5a079c7330cd1a0e3b1e63a70b650cfd66ae39';

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
    String type,
  ) {
    return SearchResultAtProvider(
      index,
      type,
    );
  }

  @override
  SearchResultAtProvider getProviderOverride(
    covariant SearchResultAtProvider provider,
  ) {
    return call(
      provider.index,
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
    String type,
  ) : this._internal(
          (ref) => searchResultAt(
            ref as SearchResultAtRef,
            index,
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
    required this.type,
  }) : super.internal();

  final int index;
  final String type;

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
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchResultAtRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `type` of this provider.
  String get type;
}

class _SearchResultAtProviderElement
    extends AutoDisposeFutureProviderElement<String> with SearchResultAtRef {
  _SearchResultAtProviderElement(super.provider);

  @override
  int get index => (origin as SearchResultAtProvider).index;
  @override
  String get type => (origin as SearchResultAtProvider).type;
}

String _$searchResultCountHash() => r'408fcb21ac3876979c09343967744550a0d9f5f4';

/// See also [searchResultCount].
@ProviderFor(searchResultCount)
const searchResultCountProvider = SearchResultCountFamily();

/// See also [searchResultCount].
class SearchResultCountFamily extends Family<AsyncValue<int>> {
  /// See also [searchResultCount].
  const SearchResultCountFamily();

  /// See also [searchResultCount].
  SearchResultCountProvider call(
    String type,
  ) {
    return SearchResultCountProvider(
      type,
    );
  }

  @override
  SearchResultCountProvider getProviderOverride(
    covariant SearchResultCountProvider provider,
  ) {
    return call(
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
    String type,
  ) : this._internal(
          (ref) => searchResultCount(
            ref as SearchResultCountRef,
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
          type: type,
        );

  SearchResultCountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final String type;

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
    return other is SearchResultCountProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchResultCountRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `type` of this provider.
  String get type;
}

class _SearchResultCountProviderElement
    extends AutoDisposeFutureProviderElement<int> with SearchResultCountRef {
  _SearchResultCountProviderElement(super.provider);

  @override
  String get type => (origin as SearchResultCountProvider).type;
}

String _$getAllChildItemsHash() => r'1d99ebe470ee5dc9d5d20954debb305c41e45675';

/// See also [getAllChildItems].
@ProviderFor(getAllChildItems)
final getAllChildItemsProvider = FutureProvider<List<ChildItem>>.internal(
  getAllChildItems,
  name: r'getAllChildItemsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAllChildItemsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetAllChildItemsRef = FutureProviderRef<List<ChildItem>>;
String _$getAllResourcesHash() => r'14fac69abc0fe23703293adb33e6e0acb436a162';

/// See also [getAllResources].
@ProviderFor(getAllResources)
final getAllResourcesProvider = AutoDisposeFutureProvider<List<Item>>.internal(
  getAllResources,
  name: r'getAllResourcesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAllResourcesHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef GetAllResourcesRef = AutoDisposeFutureProviderRef<List<Item>>;
String _$getResourceTypeHash() => r'765d6d1e0993e85fe51002d3fb193da3df3860cd';

/// See also [getResourceType].
@ProviderFor(getResourceType)
final getResourceTypeProvider = AutoDisposeProvider<String>.internal(
  getResourceType,
  name: r'getResourceTypeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getResourceTypeHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef GetResourceTypeRef = AutoDisposeProviderRef<String>;
String _$resourcesSearchResultAtHash() =>
    r'cd12da7058338d45b101e283d8213c88902e7778';

/// See also [resourcesSearchResultAt].
@ProviderFor(resourcesSearchResultAt)
const resourcesSearchResultAtProvider = ResourcesSearchResultAtFamily();

/// See also [resourcesSearchResultAt].
class ResourcesSearchResultAtFamily extends Family<AsyncValue<Item>> {
  /// See also [resourcesSearchResultAt].
  const ResourcesSearchResultAtFamily();

  /// See also [resourcesSearchResultAt].
  ResourcesSearchResultAtProvider call(
    int index,
  ) {
    return ResourcesSearchResultAtProvider(
      index,
    );
  }

  @override
  ResourcesSearchResultAtProvider getProviderOverride(
    covariant ResourcesSearchResultAtProvider provider,
  ) {
    return call(
      provider.index,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    getResourceTypeProvider,
    getAllResourcesProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    getResourceTypeProvider,
    ...?getResourceTypeProvider.allTransitiveDependencies,
    getAllResourcesProvider,
    ...?getAllResourcesProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'resourcesSearchResultAtProvider';
}

/// See also [resourcesSearchResultAt].
class ResourcesSearchResultAtProvider extends AutoDisposeFutureProvider<Item> {
  /// See also [resourcesSearchResultAt].
  ResourcesSearchResultAtProvider(
    int index,
  ) : this._internal(
          (ref) => resourcesSearchResultAt(
            ref as ResourcesSearchResultAtRef,
            index,
          ),
          from: resourcesSearchResultAtProvider,
          name: r'resourcesSearchResultAtProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$resourcesSearchResultAtHash,
          dependencies: ResourcesSearchResultAtFamily._dependencies,
          allTransitiveDependencies:
              ResourcesSearchResultAtFamily._allTransitiveDependencies,
          index: index,
        );

  ResourcesSearchResultAtProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  Override overrideWith(
    FutureOr<Item> Function(ResourcesSearchResultAtRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ResourcesSearchResultAtProvider._internal(
        (ref) => create(ref as ResourcesSearchResultAtRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Item> createElement() {
    return _ResourcesSearchResultAtProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ResourcesSearchResultAtProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ResourcesSearchResultAtRef on AutoDisposeFutureProviderRef<Item> {
  /// The parameter `index` of this provider.
  int get index;
}

class _ResourcesSearchResultAtProviderElement
    extends AutoDisposeFutureProviderElement<Item>
    with ResourcesSearchResultAtRef {
  _ResourcesSearchResultAtProviderElement(super.provider);

  @override
  int get index => (origin as ResourcesSearchResultAtProvider).index;
}

String _$resourcesCountHash() => r'd4fad0f0448911b5479b5fca9deda9ff419938a5';

/// See also [resourcesCount].
@ProviderFor(resourcesCount)
final resourcesCountProvider = AutoDisposeFutureProvider<int>.internal(
  resourcesCount,
  name: r'resourcesCountProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$resourcesCountHash,
  dependencies: <ProviderOrFamily>[getResourceTypeProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    getResourceTypeProvider,
    ...?getResourceTypeProvider.allTransitiveDependencies
  },
);

typedef ResourcesCountRef = AutoDisposeFutureProviderRef<int>;
String _$searchTextStateHash() => r'f737a460b6163e08bcf8730a7764a923adff0ede';

/// See also [SearchTextState].
@ProviderFor(SearchTextState)
final searchTextStateProvider =
    AutoDisposeNotifierProvider<SearchTextState, String>.internal(
  SearchTextState.new,
  name: r'searchTextStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchTextStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchTextState = AutoDisposeNotifier<String>;
String _$searchFilterManagerHash() =>
    r'3dc4f85688bb659b137594ff442a95ad23f04069';

/// See also [SearchFilterManager].
@ProviderFor(SearchFilterManager)
final searchFilterManagerProvider = AutoDisposeNotifierProvider<
    SearchFilterManager, SearchFilterManagerState>.internal(
  SearchFilterManager.new,
  name: r'searchFilterManagerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchFilterManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchFilterManager = AutoDisposeNotifier<SearchFilterManagerState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
