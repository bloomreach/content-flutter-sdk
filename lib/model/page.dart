//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class Page {
  /// Returns a new [Page] instance.
  Page({
    this.meta,
    this.channel,
    this.links = const {},
    this.root,
    this.document,
    this.page = const {},
  });

  PageMeta? meta;

  Channel? channel;

  Map<String, Link?> links;

  Pointer? root;

  Pointer? document;

  Map<String, Element?> page;

  Document? getDocument() {
    return page[document?.getReference()!] as Document?;
  }

  Element? getRootComponent() {
    return page[root?.getReference()!];
  }

  AbstractComponent? getComponentByPath(String path) {
    return getComponent(getRootComponent() as Component?, path);
  }

  AbstractComponent? getComponent(
      Component? currentComponent, String currentPath) {
    var paths = currentPath.split('/');
    if (paths.length > 1) {
      Component? aComponent = currentComponent!.children!
          .map((pointer) => page[pointer?.getReference()!])
          .where((element) => element!.type == ElementTypeEnum.component)
          .map((element) => element as Component?)
          .where((component) => component!.name == paths[0])
          .first;
      return getComponent(aComponent, paths.sublist(1).join('/'));
    } else {
      return currentComponent!.children!
          .map((pointer) => page[pointer?.getReference()!])
          .where((element) =>
              element!.type == ElementTypeEnum.component ||
              element.type == ElementTypeEnum.container)
          .map((element) => element as AbstractComponent?)
          .where((abstractComponent) => abstractComponent!.name == paths[0])
          .first;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Page &&
          other.meta == meta &&
          other.channel == channel &&
          other.links == links &&
          other.root == root &&
          other.document == document &&
          other.page == page;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (meta == null ? 0 : meta.hashCode) +
      (channel == null ? 0 : channel.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (root == null ? 0 : root.hashCode) +
      (document == null ? 0 : document.hashCode) +
      (page == null ? 0 : page.hashCode);

  @override
  String toString() =>
      'Page[meta=$meta, channel=$channel, links=$links, root=$root, document=$document, page=$page]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (meta != null) {
      json[r'meta'] = meta;
    }
    if (channel != null) {
      json[r'channel'] = channel;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    if (root != null) {
      json[r'root'] = root;
    }
    if (document != null) {
      json[r'document'] = document;
    }
    if (page != null) {
      json[r'page'] = page;
    }
    return json;
  }

  /// Returns a new [Page] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Page? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Page(
        meta: PageMeta.fromJson(json[r'meta']),
        channel: Channel.fromJson(json[r'channel']),
        links: Links.mapFromJson(json[r'links']),
        root: Pointer.fromJson(json[r'root']),
        document: Pointer.fromJson(json[r'document']),
        page: Elements.mapFromJson(json[r'page']),
      );
    }
    return null;
  }

  static List<Page?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Page.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Page>[];

  static Map<String, Page?> mapFromJson(dynamic json) {
    final map = <String, Page?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Page.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Page-objects as value to a dart map
  static Map<String, List<Page?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final Map<String, List<Page?>?> map = <String, List<Page>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Page.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
