//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class ImageData {
  /// Returns a new [ImageData] instance.
  ImageData({
    this.fileName,
    this.thumbnail,
    this.original,
  });

  String? fileName;

  Image? thumbnail;

  Image? original;

  @override
  String toString() => 'ImageData[fileName=$fileName, thumbnail=$thumbnail, original=$original]';

  /// Returns a new [ImageData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ImageData(
        fileName: mapValueOfType<String>(json, r'fileName'),
        thumbnail: Image.fromJson(json[r'thumbnail']),
        original: Image.fromJson(json[r'original']),
      );
    }
    return null;
  }


}

