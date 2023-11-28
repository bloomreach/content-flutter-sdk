//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class ComponentContent extends Element {
  /// Returns a new [ComponentContent] instance.

  Map<String, dynamic>? data;

  dynamic getData(String key) {
    return data![key];
  }

  ComponentContent({
    this.data,
    Map<String, Link?> links = const {},
    ComponentMeta? meta,
    ElementTypeEnum? type})
      : super(type: type, links: links, meta: meta);


  @override
  String toString() => 'ComponentContent[data=$data, links=$links, meta=$meta, type=$type]';


  /// Returns a new [ComponentContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComponentContent fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ComponentContent(
        data: json[r'data'],
        links: Links.mapFromJson(json[r'links']),
        meta: ComponentMeta.fromJson(json[r'meta']),
        type: ElementTypeEnum.fromJson(json[r'type']),
      );
    }
    throw Exception('value is not a map');
  }


}




