//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Imageset extends Element {
  /// Returns a new [Imageset] instance.
  Imageset(
      {this.data,
      Map<String, Link?> links = const {},
      ComponentMeta? meta,
      required ElementTypeEnum? type})
      : super(type: type, links: links, meta: meta);

  ImageData? data;

  String? getImageLink() {
    return data?.original?.links['site']?.href;
  }

  @override
  String toString() =>
      'Imageset[data=$data, links=$links, meta=$meta, type=$type]';

  /// Returns a new [Imageset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Imageset fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Imageset(
        data: ImageData.fromJson(json[r'data']),
        links: Links.mapFromJson(json[r'links']),
        meta: ComponentMeta.fromJson(json[r'meta']),
        type: ElementTypeEnum.fromJson(json[r'type']),
      );
    }
    throw Exception('value is not a map');
  }
}
