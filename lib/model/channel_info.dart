//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class ChannelInfo {
  /// Returns a new [ChannelInfo] instance.
  ChannelInfo({
    this.props = const {},
  });

  Map<String, String>? props;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChannelInfo &&
     other.props == props;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (props == null ? 0 : props.hashCode);

  @override
  String toString() => 'ChannelInfo[props=$props]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (props != null) {
      json[r'props'] = props;
    }
    return json;
  }

  /// Returns a new [ChannelInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ChannelInfo(
        props: mapCastOfType<String, String>(json, r'props'),
      );
    }
    return null;
  }

  static List<ChannelInfo?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ChannelInfo.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ChannelInfo>[];

  static Map<String, ChannelInfo?> mapFromJson(dynamic json) {
    final map = <String, ChannelInfo?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ChannelInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ChannelInfo-objects as value to a dart map
  static Map<String, List<ChannelInfo?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<ChannelInfo?>?> map = <String, List<ChannelInfo>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ChannelInfo.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

