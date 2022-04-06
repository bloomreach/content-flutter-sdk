//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Elements {
  Elements({
    this.links = const {},
  });

  Map<String, Element> links;

  // ignore: prefer_constructors_over_static_methods
  static Map<String, Element> mapFromJson(dynamic json) {
    final map = <String, Element>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        var ctype = value['type'];
        switch (ctype) {
          case 'document':
            map[key] = Document.fromJson(value);
            break;
          case 'component':
            map[key] = Component.fromJson(value);
            break;
          case 'container':
            map[key] = Container.fromJson(value);
            break;
          case 'container-item':
            map[key] = ContainerItem.fromJson(value);
            break;
          case 'componentcontent':
            map[key] = ComponentContent.fromJson(value);
            break;
          case 'imageset':
            map[key] = Imageset.fromJson(value);
            break;
          default:
            map[key] = Element.fromJson(value);
        }
      });
    }
    return map;
  }
}
