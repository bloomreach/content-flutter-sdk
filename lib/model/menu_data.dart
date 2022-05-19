//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class MenuData {
  MenuData({
    required this.name,
    required this.siteMenuItems,
  });

  String name;

  List<MenuItem> siteMenuItems;

  @override
  String toString() {
    return 'MenuData{name: $name, siteMenuItems: $siteMenuItems}';
  }

  /// Returns a new [ImageData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MenuData fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MenuData(
        name: mapValueOfType<String>(json, r'name') ?? '',
        siteMenuItems:
            MenuItem.listFromJson(json[r'siteMenuItems']) ?? <MenuItem>[],
      );
    }
    throw Exception('menu data value is not a map');
  }
}
