//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Menu extends Element {
  Menu(
      {required this.data,
      Map<String, Link?> links = const {},
      ComponentMeta? meta,
      required ElementTypeEnum? type})
      : super(type: type, links: links, meta: meta);

  MenuData data;

  @override
  String toString() {
    return 'Menu{data: $data}';
  }

  List<MenuItem> getSiteMenuItems(){
    return data.siteMenuItems;
  }

  /// Returns a new [Menu] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Menu fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Menu(
        data: MenuData.fromJson(json[r'data']),
        links: Links.mapFromJson(json[r'links']),
        meta: ComponentMeta.fromJson(json[r'meta']),
        type: ElementTypeEnum.fromJson(json[r'type']),
      );
    }
    throw Exception('menu value is not a map');
  }
}
