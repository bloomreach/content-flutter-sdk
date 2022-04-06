//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Container extends AbstractComponent {
  /// Returns a new [Container] instance.
  Container(
      {this.children = const [],
      this.xtype,
      String? id,
      String? label,
      String? name,
      Map<String, Link?> links = const {},
      ComponentMeta? meta,
      required ElementTypeEnum? type})
      : super(
            type: type,
            links: links,
            meta: meta,
            id: id,
            label: label,
            name: name);

  List<Pointer?>? children;

  String? xtype;

  List<ContainerItem?> getComponents(Page page) {
    return this.children!.map((pointer) =>  page.page[pointer!.getReference()!] as ContainerItem?).toList();
  }

  @override
  String toString() =>
      'Container[children=$children, xtype=$xtype, links=$links, meta=$meta, type=$type]';

  /// Returns a new [Container] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Container? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Container(
        children: Pointer.listFromJson(json[r'children']),
        xtype: mapValueOfType<String>(json, r'xtype'),
        links: Links.mapFromJson(json[r'links']),
        meta: ComponentMeta.fromJson(json[r'meta']),
        type: ElementTypeEnum.fromJson(json[r'type']),
        id: mapValueOfType<String>(json, r'id'),
        label: mapValueOfType<String>(json, r'label'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }
}
