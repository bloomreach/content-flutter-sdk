//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AbstractComponent extends Element {
  /// Returns a new [AbstractComponent] instance.
  AbstractComponent(
      {this.id,
      this.label,
      this.name,
      Map<String, Link> links = const {},
      ComponentMeta meta,
      @required ElementTypeEnum type})
      : super(type: type, links: links, meta: meta);

  String id;

  String label;

  String name;

  @override
  String toString() =>
      'AbstractComponent[id=$id, label=$label, name=$name, links=$links, meta=$meta, type=$type]';

  /// Returns a new [AbstractComponent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AbstractComponent fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AbstractComponent(
        id: mapValueOfType<String>(json, r'id'),
        label: mapValueOfType<String>(json, r'label'),
        name: mapValueOfType<String>(json, r'name'),
        links: Links.mapFromJson(json[r'links']),
        meta: ComponentMeta.fromJson(json[r'meta']),
        type: ElementTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }
}
