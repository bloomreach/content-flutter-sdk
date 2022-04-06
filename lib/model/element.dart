//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Element {
  /// Returns a new [Element] instance.
  Element({
    this.links = const {},
    this.meta,
    required this.type,
  });

  Map<String, Link?> links;

  ComponentMeta? meta;

  ElementTypeEnum? type;


  @override
  String toString() => 'Element[links=$links, meta=$meta, type=$type]';

  /// Returns a new [Element] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Element? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Element(
        links: Links.mapFromJson(json[r'links']),
        meta: ComponentMeta.fromJson(json[r'meta']),
        type: ElementTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static Map<String, Element?> mapFromJson(dynamic json) {
    final map = <String, Element?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Element.fromJson(value));
    }
    return map;
  }
}

class ElementTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ElementTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const document = ElementTypeEnum._(r'document');
  static const component = ElementTypeEnum._(r'component');
  static const menu = ElementTypeEnum._(r'menu');
  static const container = ElementTypeEnum._(r'container');
  static const containerItem = ElementTypeEnum._(r'container-item');
  static const asset = ElementTypeEnum._(r'asset');
  static const imageset = ElementTypeEnum._(r'imageset');

  /// List of all possible values in this [enum][ElementTypeEnum].
  static const values = <ElementTypeEnum>[
    document,
    component,
    menu,
    container,
    containerItem,
    asset,
    imageset,
  ];

  static ElementTypeEnum? fromJson(dynamic value) =>
      ElementTypeEnumTypeTransformer().decode(value);

  static List<ElementTypeEnum?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ElementTypeEnum.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ElementTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [ElementTypeEnum] to String,
/// and [decode] dynamic data back to [ElementTypeEnum].
class ElementTypeEnumTypeTransformer {
  factory ElementTypeEnumTypeTransformer() =>
      _instance ??= const ElementTypeEnumTypeTransformer._();

  const ElementTypeEnumTypeTransformer._();

  String encode(ElementTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ElementTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ElementTypeEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'document':
          return ElementTypeEnum.document;
        case r'component':
          return ElementTypeEnum.component;
        case r'menu':
          return ElementTypeEnum.menu;
        case r'container':
          return ElementTypeEnum.container;
        case r'container-item':
          return ElementTypeEnum.containerItem;
        case r'asset':
          return ElementTypeEnum.asset;
        case r'imageset':
          return ElementTypeEnum.imageset;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ElementTypeEnumTypeTransformer] instance.
  static ElementTypeEnumTypeTransformer? _instance;
}
