//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class ComponentMeta {
  /// Returns a new [ComponentMeta] instance.
  ComponentMeta({
    this.params = const {},
    this.paramsInfo = const {},
  });

  Map<String, String> params;

  Map<String, String> paramsInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ComponentMeta &&
     other.params == params &&
     other.paramsInfo == paramsInfo;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (params == null ? 0 : params.hashCode) +
    (paramsInfo == null ? 0 : paramsInfo.hashCode);

  @override
  String toString() => 'ComponentMeta[params=$params, paramsInfo=$paramsInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (params != null) {
      json[r'params'] = params;
    }
    if (paramsInfo != null) {
      json[r'paramsInfo'] = paramsInfo;
    }
    return json;
  }

  /// Returns a new [ComponentMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComponentMeta fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ComponentMeta(
        params: mapCastOfType<String, String>(json, r'params'),
        paramsInfo: mapCastOfType<String, String>(json, r'paramsInfo'),
      );
    }
    return null;
  }

  static List<ComponentMeta> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ComponentMeta.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ComponentMeta>[];

  static Map<String, ComponentMeta> mapFromJson(dynamic json) {
    final map = <String, ComponentMeta>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ComponentMeta.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ComponentMeta-objects as value to a dart map
  static Map<String, List<ComponentMeta>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ComponentMeta>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ComponentMeta.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

