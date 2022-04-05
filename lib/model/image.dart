//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Image {
  /// Returns a new [Image] instance.
  Image({
    this.width,
    this.height,
    this.lastModified,
    this.mimeType,
    this.size,
    this.links = const {},
  });

  int width;

  int height;

  int lastModified;

  String mimeType;

  int size;

  Map<String, Link> links;

  @override
  String toString() => 'Image[width=$width, height=$height, lastModified=$lastModified, mimeType=$mimeType, size=$size, links=$links]';

  /// Returns a new [Image] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Image fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Image(
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
        lastModified: mapValueOfType<int>(json, r'lastModified'),
        mimeType: mapValueOfType<String>(json, r'mimeType'),
        size: mapValueOfType<int>(json, r'size'),
        links: Links.mapFromJson(json[r'links']),
      );
    }
    return null;
  }

}

