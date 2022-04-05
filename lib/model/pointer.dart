//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Pointer {
  /// Returns a new [Pointer] instance.
  Pointer({
    this.dollarRef,
  });

  String dollarRef;

  String getReference() {
    return dollarRef?.substring(dollarRef.lastIndexOf('/')+1);
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pointer &&
     other.dollarRef == dollarRef;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (dollarRef == null ? 0 : dollarRef.hashCode);

  @override
  String toString() => 'Pointer[dollarRef=$dollarRef]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (dollarRef != null) {
      json[r'$ref'] = dollarRef;
    }
    return json;
  }

  /// Returns a new [Pointer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pointer fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Pointer(
        dollarRef: mapValueOfType<String>(json, r'$ref'),
      );
    }
    return null;
  }

  static List<Pointer> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Pointer.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Pointer>[];

  static Map<String, Pointer> mapFromJson(dynamic json) {
    final map = <String, Pointer>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Pointer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Pointer-objects as value to a dart map
  static Map<String, List<Pointer>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Pointer>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Pointer.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

