//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Link {
  /// Returns a new [Link] instance.
  Link({
    required this.href,
    required this.type,
  });

  String? href;

  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Link &&
     other.href == href &&
     other.type == type;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (href == null ? 0 : href.hashCode) +
    (type == null ? 0 : type.hashCode);

  @override
  String toString() => 'Link[href=$href, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'href'] = href;
      json[r'type'] = type;
    return json;
  }

  /// Returns a new [Link] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Link fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Link(
        href: mapValueOfType<String>(json, r'href'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    throw ArgumentError('Value is not a map');
  }

}

