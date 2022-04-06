//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class PaginationPage {
  /// Returns a new [PaginationPage] instance.
  PaginationPage({
    this.number,
    this.links = const {},
  });

  int? number;

  Map<String, Link>? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginationPage &&
     other.number == number &&
     other.links == links;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (number == null ? 0 : number.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'PaginationPage[number=$number, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (number != null) {
      json[r'number'] = number;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [PaginationPage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginationPage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PaginationPage(
        number: mapValueOfType<int>(json, r'number'),
        links: mapValueOfType<Map<String, Link>>(json, r'links'),
      );
    }
    return null;
  }

  static List<PaginationPage?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PaginationPage.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PaginationPage>[];

  static Map<String, PaginationPage?> mapFromJson(dynamic json) {
    final map = <String, PaginationPage?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PaginationPage.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PaginationPage-objects as value to a dart map
  static Map<String, List<PaginationPage?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<PaginationPage?>?> map = <String, List<PaginationPage>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PaginationPage.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

