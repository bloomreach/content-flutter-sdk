//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
  String toString() => 'PaginationPage[number=$number, links=$links]';


  /// Returns a new [PaginationPage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginationPage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PaginationPage(
        number: mapValueOfType<int>(json, r'number'),
        links: Links.mapFromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<PaginationPage?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PaginationPage.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PaginationPage>[];




}

