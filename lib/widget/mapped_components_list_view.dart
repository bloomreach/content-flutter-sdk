part of pda.content.bloomreach;

class MappedComponentsListView extends ComponentsListView {
  final Map<String, dynamic Function(Page page, ContainerItem item)> componentMapping;

  MappedComponentsListView(this.componentMapping, List<ContainerItem> items, Page page)
      : super(items, page);

  @override
  Widget instantiateWidgetByName(String ctype, ContainerItem item, Page page) {
    return componentMapping[ctype]?.call(page, item) ??
        ListTile(
          title: Text(item.ctype),
          subtitle: Text('component not defined in application, please update component mapping'),
        );
  }
}
