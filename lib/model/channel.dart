//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Channel {
  /// Returns a new [Channel] instance.
  Channel({
    this.info,
  });

  ChannelInfo? info;

  @override
  String toString() => 'Channel[info=$info]';


  /// Returns a new [Channel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Channel fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Channel(
        info: ChannelInfo.fromJson(json[r'info']),
      );
    }
    throw ArgumentError('Value is not a map');
  }

}

