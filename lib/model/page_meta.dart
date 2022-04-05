//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageMeta {
  /// Returns a new [PageMeta] instance.
  PageMeta({
    this.branch = 'master',
    this.product = 'brx',
    this.version = '1.0',
  });

  String branch;

  String product;

  String version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageMeta &&
     other.branch == branch &&
     other.product == product &&
     other.version == version;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (branch == null ? 0 : branch.hashCode) +
    (product == null ? 0 : product.hashCode) +
    (version == null ? 0 : version.hashCode);

  @override
  String toString() => 'PageMeta[branch=$branch, product=$product, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (branch != null) {
      json[r'branch'] = branch;
    }
    if (product != null) {
      json[r'product'] = product;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    return json;
  }

  /// Returns a new [PageMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PageMeta fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PageMeta(
        branch: mapValueOfType<String>(json, r'branch'),
        product: mapValueOfType<String>(json, r'product'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<PageMeta> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PageMeta.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PageMeta>[];

  static Map<String, PageMeta> mapFromJson(dynamic json) {
    final map = <String, PageMeta>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PageMeta.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PageMeta-objects as value to a dart map
  static Map<String, List<PageMeta>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PageMeta>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PageMeta.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

