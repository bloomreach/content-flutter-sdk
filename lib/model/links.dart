//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Links {

  Links({
    this.links = const {},
  });

  Map<String, Link> links;

  // ignore: prefer_constructors_over_static_methods
  static Map<String, Link> mapFromJson(dynamic json) {
    final map = <String, Link>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Link.fromJson(value));
    }
    return map;
  }

}