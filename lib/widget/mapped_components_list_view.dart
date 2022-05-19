part of pda.content.bloomreach;

class MappedComponentsListView extends ComponentsListView {
  final Map<String, dynamic Function(Page page, ContainerItem item, [void Function(String newPath)? setPage])> componentMapping;

  MappedComponentsListView(
      this.componentMapping, List<ContainerItem> items, Page page,
      [void Function(String newPath)? setPage])
      : super(items, page, setPage);

  @override
  Widget instantiateWidgetByName(String ctype, ContainerItem item, Page page,
      [void Function(String newPath)? setPage]) {
    return componentMapping[ctype]?.call(page, item, setPage) ??
        ListTile(
          title: Text(item.ctype),
          subtitle: Text(
              'component not defined in application, please update component mapping'),
        );
  }
}
