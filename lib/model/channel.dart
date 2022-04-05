//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  ChannelInfo info;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Channel &&
     other.info == info;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (info == null ? 0 : info.hashCode);

  @override
  String toString() => 'Channel[info=$info]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (info != null) {
      json[r'info'] = info;
    }
    return json;
  }

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
    return null;
  }

  static List<Channel> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Channel.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Channel>[];

  static Map<String, Channel> mapFromJson(dynamic json) {
    final map = <String, Channel>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Channel.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Channel-objects as value to a dart map
  static Map<String, List<Channel>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Channel>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Channel.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

