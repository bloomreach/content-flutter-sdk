part of pda.content.bloomreach;

abstract class ComponentsListView extends StatelessWidget {
  final List<ContainerItem> items;
  final Page page;

  ComponentsListView(this.items, this.page);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return instantiateWidgetByName(item.ctype, item, page);
        });
  }

  Widget instantiateWidgetByName(String ctype, ContainerItem item, Page page);
}
