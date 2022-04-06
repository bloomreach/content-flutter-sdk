//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Menu {
  /// Returns a new [Menu] instance.
  Menu({
    this.data = const {},
    this.links = const {},
    this.meta,
    required this.type,
  });

  Map<String, Object>? data;

  Map<String, Link>? links;

  ComponentMeta? meta;

  MenuTypeEnum? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Menu &&
     other.data == data &&
     other.links == links &&
     other.meta == meta &&
     other.type == type;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (data == null ? 0 : data.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (meta == null ? 0 : meta.hashCode) +
    (type == null ? 0 : type.hashCode);

  @override
  String toString() => 'Menu[data=$data, links=$links, meta=$meta, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (data != null) {
      json[r'data'] = data;
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

  /// Returns a new [Menu] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Menu? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Menu(
        data: mapValueOfType<Map<String, Object>>(json, r'data'),
        links: mapValueOfType<Map<String, Link>>(json, r'links'),
        meta: ComponentMeta.fromJson(json[r'meta']),
        type: MenuTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static List<Menu?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Menu.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Menu>[];

  static Map<String, Menu?> mapFromJson(dynamic json) {
    final map = <String, Menu?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Menu.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Menu-objects as value to a dart map
  static Map<String, List<Menu?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<Menu?>?> map = <String, List<Menu>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Menu.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class MenuTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MenuTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const document = MenuTypeEnum._(r'document');
  static const component = MenuTypeEnum._(r'component');
  static const menu = MenuTypeEnum._(r'menu');
  static const container = MenuTypeEnum._(r'container');
  static const containerItem = MenuTypeEnum._(r'container-item');
  static const asset = MenuTypeEnum._(r'asset');
  static const imageset = MenuTypeEnum._(r'imageset');

  /// List of all possible values in this [enum][MenuTypeEnum].
  static const values = <MenuTypeEnum>[
    document,
    component,
    menu,
    container,
    containerItem,
    asset,
    imageset,
  ];

  static MenuTypeEnum? fromJson(dynamic value) =>
    MenuTypeEnumTypeTransformer().decode(value);

  static List<MenuTypeEnum?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MenuTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MenuTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [MenuTypeEnum] to String,
/// and [decode] dynamic data back to [MenuTypeEnum].
class MenuTypeEnumTypeTransformer {
  factory MenuTypeEnumTypeTransformer() => _instance ??= const MenuTypeEnumTypeTransformer._();

  const MenuTypeEnumTypeTransformer._();

  String encode(MenuTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MenuTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MenuTypeEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'document': return MenuTypeEnum.document;
        case r'component': return MenuTypeEnum.component;
        case r'menu': return MenuTypeEnum.menu;
        case r'container': return MenuTypeEnum.container;
        case r'container-item': return MenuTypeEnum.containerItem;
        case r'asset': return MenuTypeEnum.asset;
        case r'imageset': return MenuTypeEnum.imageset;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MenuTypeEnumTypeTransformer] instance.
  static MenuTypeEnumTypeTransformer? _instance;
}


