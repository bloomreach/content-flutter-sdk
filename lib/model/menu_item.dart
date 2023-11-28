//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class MenuItem {
  /// Returns a new [MenuItem] instance.
  MenuItem({
    this.depth,
    this.repositoryBased,
    this.properties = const {},
    this.name,
    this.childMenuItems = const [],
    this.expanded,
    this.selected,
    this.parameters = const {},
    this.links = const {},
  });

  int? depth;

  bool? repositoryBased;

  Map<String, String>? properties;

  String? name;

  List<MenuItem?>? childMenuItems;

  bool? expanded;

  bool? selected;

  Map<String, String>? parameters;

  Map<String, Link>? links;

  @override
  String toString() {
    return 'MenuItem{name: $name, parameters: $parameters, links: $links}';
  }

  String? getLink() {
    return links?['site']?.href;
  }

  /// Returns a new [MenuItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MenuItem fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MenuItem(
          depth: mapValueOfType<int>(json, r'depth'),
          repositoryBased: mapValueOfType<bool>(json, r'repositoryBased'),
          properties: mapCastOfType<String, String>(json, r'properties'),
          name: mapValueOfType<String>(json, r'name'),
          childMenuItems: MenuItem.listFromJson(json[r'childMenuItems']),
          expanded: mapValueOfType<bool>(json, r'expanded'),
          selected: mapValueOfType<bool>(json, r'selected'),
          parameters: mapCastOfType<String, String>(json, r'parameters'),
          links: Links.mapFromJson(json[r'links']));
    }
    throw Exception('value is not a map');
  }

  static List<MenuItem>? listFromJson(dynamic json) =>
      json is List && json.isNotEmpty
          ? json.map(MenuItem.fromJson).toList()
          : <MenuItem>[];
}
