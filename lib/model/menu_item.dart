//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  int depth;

  bool repositoryBased;

  Map<String, String> properties;

  String name;

  List<MenuItem> childMenuItems;

  bool expanded;

  bool selected;

  Map<String, String> parameters;

  Map<String, Link> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MenuItem &&
     other.depth == depth &&
     other.repositoryBased == repositoryBased &&
     other.properties == properties &&
     other.name == name &&
     other.childMenuItems == childMenuItems &&
     other.expanded == expanded &&
     other.selected == selected &&
     other.parameters == parameters &&
     other.links == links;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (depth == null ? 0 : depth.hashCode) +
    (repositoryBased == null ? 0 : repositoryBased.hashCode) +
    (properties == null ? 0 : properties.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (childMenuItems == null ? 0 : childMenuItems.hashCode) +
    (expanded == null ? 0 : expanded.hashCode) +
    (selected == null ? 0 : selected.hashCode) +
    (parameters == null ? 0 : parameters.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'MenuItem[depth=$depth, repositoryBased=$repositoryBased, properties=$properties, name=$name, childMenuItems=$childMenuItems, expanded=$expanded, selected=$selected, parameters=$parameters, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (depth != null) {
      json[r'depth'] = depth;
    }
    if (repositoryBased != null) {
      json[r'repositoryBased'] = repositoryBased;
    }
    if (properties != null) {
      json[r'properties'] = properties;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (childMenuItems != null) {
      json[r'childMenuItems'] = childMenuItems;
    }
    if (expanded != null) {
      json[r'expanded'] = expanded;
    }
    if (selected != null) {
      json[r'selected'] = selected;
    }
    if (parameters != null) {
      json[r'parameters'] = parameters;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
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
        links: mapValueOfType<Map<String, Link>>(json, r'links'),
      );
    }
    return null;
  }

  static List<MenuItem> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MenuItem.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MenuItem>[];

  static Map<String, MenuItem> mapFromJson(dynamic json) {
    final map = <String, MenuItem>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MenuItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MenuItem-objects as value to a dart map
  static Map<String, List<MenuItem>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MenuItem>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MenuItem.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

