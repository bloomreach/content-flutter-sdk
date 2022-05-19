//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Pagination extends Element {
  /// Returns a new [Pagination] instance.
  Pagination({
    this.items = const [],
    this.offset,
    this.total,
    this.size,
    this.first,
    this.current,
    this.previous,
    this.next,
    this.last,
    this.pages = const [],
    this.enabled,
    Map<String, Link?> links = const {},
    ComponentMeta? meta,
    required ElementTypeEnum? type,
  }) : super(type: type, links: links, meta: meta);

  List<Pointer?>? items;

  int? offset;

  int? total;

  int? size;

  PaginationPage? first;

  PaginationPage? current;

  PaginationPage? previous;

  PaginationPage? next;

  PaginationPage? last;

  List<PaginationPage?>? pages;

  bool? enabled;

  List<Document> getItems(page) {
    return items != null
        ? items?.map((pointer) => page.page[pointer!.getReference()!] as Document).toList()
            as List<Document>
        : List<Document>.empty();
  }

  @override
  String toString() =>
      'Pagination[items=$items, offset=$offset, total=$total, size=$size, first=$first, current=$current, previous=$previous, next=$next, last=$last, pages=$pages, enabled=$enabled, links=$links, meta=$meta, type=$type]';

  /// Returns a new [Pagination] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pagination fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Pagination(
        items: Pointer.listFromJson(json[r'items']),
        offset: mapValueOfType<int>(json, r'offset'),
        total: mapValueOfType<int>(json, r'total'),
        size: mapValueOfType<int>(json, r'size'),
        first: PaginationPage.fromJson(json[r'first']),
        current: PaginationPage.fromJson(json[r'current']),
        previous: PaginationPage.fromJson(json[r'previous']),
        next: PaginationPage.fromJson(json[r'next']),
        last: PaginationPage.fromJson(json[r'last']),
        pages: PaginationPage.listFromJson(json[r'pages']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        links: Links.mapFromJson(json[r'links']),
        meta: ComponentMeta.fromJson(json[r'meta']),
        type: ElementTypeEnum.fromJson(json[r'type']),
      );
    }
    throw new Exception("pagination data is not a map");
  }
}
