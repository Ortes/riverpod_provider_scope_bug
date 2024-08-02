class SearchResponse {
  final List<String> hits;
  final int nbHits;

  const SearchResponse(this.hits) : nbHits = hits.length;
}

abstract class Item {
  String get id;
  String get name;
}

class ChildItem extends Item {
  @override
  final String id;
  @override
  final String name;

  ChildItem(this.id, this.name);
}
