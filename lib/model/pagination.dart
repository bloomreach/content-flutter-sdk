//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Pagination {
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
    this.links = const {},
    this.meta,
    @required this.type,
  });

  List<Pointer> items;

  int offset;

  int total;

  int size;

  PaginationPage first;

  PaginationPage current;

  PaginationPage previous;

  PaginationPage next;

  PaginationPage last;

  List<PaginationPage> pages;

  bool enabled;

  Map<String, Link> links;

  ComponentMeta meta;

  PaginationTypeEnum type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pagination &&
     other.items == items &&
     other.offset == offset &&
     other.total == total &&
     other.size == size &&
     other.first == first &&
     other.current == current &&
     other.previous == previous &&
     other.next == next &&
     other.last == last &&
     other.pages == pages &&
     other.enabled == enabled &&
     other.links == links &&
     other.meta == meta &&
     other.type == type;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (items == null ? 0 : items.hashCode) +
    (offset == null ? 0 : offset.hashCode) +
    (total == null ? 0 : total.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (first == null ? 0 : first.hashCode) +
    (current == null ? 0 : current.hashCode) +
    (previous == null ? 0 : previous.hashCode) +
    (next == null ? 0 : next.hashCode) +
    (last == null ? 0 : last.hashCode) +
    (pages == null ? 0 : pages.hashCode) +
    (enabled == null ? 0 : enabled.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (meta == null ? 0 : meta.hashCode) +
    (type == null ? 0 : type.hashCode);

  @override
  String toString() => 'Pagination[items=$items, offset=$offset, total=$total, size=$size, first=$first, current=$current, previous=$previous, next=$next, last=$last, pages=$pages, enabled=$enabled, links=$links, meta=$meta, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (items != null) {
      json[r'items'] = items;
    }
    if (offset != null) {
      json[r'offset'] = offset;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (first != null) {
      json[r'first'] = first;
    }
    if (current != null) {
      json[r'current'] = current;
    }
    if (previous != null) {
      json[r'previous'] = previous;
    }
    if (next != null) {
      json[r'next'] = next;
    }
    if (last != null) {
      json[r'last'] = last;
    }
    if (pages != null) {
      json[r'pages'] = pages;
    }
    if (enabled != null) {
      json[r'enabled'] = enabled;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    if (meta != null) {
      json[r'meta'] = meta;
    }
      json[r'type'] = type;
    return json;
  }

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
        links: mapValueOfType<Map<String, Link>>(json, r'links'),
        meta: ComponentMeta.fromJson(json[r'meta']),
        type: PaginationTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static List<Pagination> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Pagination.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Pagination>[];

  static Map<String, Pagination> mapFromJson(dynamic json) {
    final map = <String, Pagination>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Pagination.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Pagination-objects as value to a dart map
  static Map<String, List<Pagination>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Pagination>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Pagination.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class PaginationTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PaginationTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const document = PaginationTypeEnum._(r'document');
  static const component = PaginationTypeEnum._(r'component');
  static const menu = PaginationTypeEnum._(r'menu');
  static const container = PaginationTypeEnum._(r'container');
  static const containerItem = PaginationTypeEnum._(r'container-item');
  static const asset = PaginationTypeEnum._(r'asset');
  static const imageset = PaginationTypeEnum._(r'imageset');

  /// List of all possible values in this [enum][PaginationTypeEnum].
  static const values = <PaginationTypeEnum>[
    document,
    component,
    menu,
    container,
    containerItem,
    asset,
    imageset,
  ];

  static PaginationTypeEnum fromJson(dynamic value) =>
    PaginationTypeEnumTypeTransformer().decode(value);

  static List<PaginationTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PaginationTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PaginationTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [PaginationTypeEnum] to String,
/// and [decode] dynamic data back to [PaginationTypeEnum].
class PaginationTypeEnumTypeTransformer {
  factory PaginationTypeEnumTypeTransformer() => _instance ??= const PaginationTypeEnumTypeTransformer._();

  const PaginationTypeEnumTypeTransformer._();

  String encode(PaginationTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PaginationTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaginationTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'document': return PaginationTypeEnum.document;
        case r'component': return PaginationTypeEnum.component;
        case r'menu': return PaginationTypeEnum.menu;
        case r'container': return PaginationTypeEnum.container;
        case r'container-item': return PaginationTypeEnum.containerItem;
        case r'asset': return PaginationTypeEnum.asset;
        case r'imageset': return PaginationTypeEnum.imageset;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PaginationTypeEnumTypeTransformer] instance.
  static PaginationTypeEnumTypeTransformer _instance;
}


