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
    required this.meta,
    required this.channel,
    this.links = const {},
    this.root,
    this.document,
    this.page = const {},
  });

  PageMeta meta;

  Channel channel;

  Map<String, Link> links;

  Pointer? root;

  Pointer? document;

  Map<String, Element> page;

  bool isPreview() {
    return meta.preview;
  }

  Document? getDocument() {
    return page[document?.getReference()!] as Document?;
  }

  Component getRootComponent() {
    return page[root?.getReference()!] as Component;
  }

  T getComponentByPath<T extends AbstractComponent>(String path) {
    return getComponent(getRootComponent(), path) as T;
  }

  AbstractComponent getComponent(
      Component currentComponent, String currentPath) {
    var paths = currentPath.split('/');
    if (paths.length > 1) {
      Component aComponent = currentComponent.children!
          .map((pointer) => page[pointer?.getReference()!])
          .where((element) => element!.type == ElementTypeEnum.component)
          .map((element) => element as Component)
          .where((component) => component.name == paths[0])
          .first;
      return getComponent(aComponent, paths.sublist(1).join('/'));
    } else {
      return currentComponent.children!
          .map((pointer) => page[pointer?.getReference()!])
          .where((element) =>
              element!.type == ElementTypeEnum.component ||
              element.type == ElementTypeEnum.container)
          .map((element) => element as AbstractComponent)
          .where((abstractComponent) => abstractComponent.name == paths[0])
          .first;
    }
  }

  @override
  String toString() =>
      'Page[meta=$meta, channel=$channel, links=$links, root=$root, document=$document, page=$page]';

  /// Returns a new [Page] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Page fromJson(dynamic value) {
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
    throw ArgumentError('Value is not a map');
  }
}
