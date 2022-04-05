//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContainerItem extends AbstractComponent {
  /// Returns a new [ContainerItem] instance.
  ContainerItem(
      {this.ctype,
      this.models = const {},
      this.content,
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

  String ctype;

  Map<String, Pointer> models;

  Pointer content;

  bool hasContent() {
    return content?.getReference() != null;
  }

  ComponentContent getContent(Page page) {
    if (hasContent()) {
      return page.page[content.getReference()];
    }
    return null;
  }

  @override
  String toString() =>
      'ContainerItem[ctype=$ctype, models=$models, content=$content, links=$links, meta=$meta, type=$type]';

  /// Returns a new [ContainerItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContainerItem fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ContainerItem(
        ctype: mapValueOfType<String>(json, r'ctype'),
        models: mapValueOfType<Map<String, Pointer>>(json, r'models'),
        content: Pointer.fromJson(json[r'content']),
        meta: ComponentMeta.fromJson(json[r'meta']),
        links: Links.mapFromJson(json[r'links']),
        id: mapValueOfType<String>(json, r'id'),
        label: mapValueOfType<String>(json, r'label'),
        name: mapValueOfType<String>(json, r'name'),
        type: ElementTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }
}
