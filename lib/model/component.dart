//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Component extends AbstractComponent {
  /// Returns a new [Component] instance.
  Component(
      {this.children = const [],
      this.models = const {},
      String id,
      String label,
      String name,
      Map<String, Link> links = const {},
      ComponentMeta meta,
      @required ElementTypeEnum type})
      : super(
            type: type,
            links: links,
            meta: meta,
            id: id,
            label: label,
            name: name);

  List<Pointer> children;

  Map<String, Pointer> models;

  @override
  String toString() =>
      'Component[children=$children, models=$models, links=$links, meta=$meta, type=$type]';

  /// Returns a new [Component] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Component fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Component(
        children: Pointer.listFromJson(json[r'children']),
        models: mapValueOfType<Map<String, Pointer>>(json, r'models'),
        links: Links.mapFromJson(json[r'links']),
        meta: ComponentMeta.fromJson(json[r'meta']),
        id: mapValueOfType<String>(json, r'id'),
        label: mapValueOfType<String>(json, r'label'),
        name: mapValueOfType<String>(json, r'name'),
        type: ElementTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }
}
