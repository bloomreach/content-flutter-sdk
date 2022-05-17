part of pda.content.bloomreach;

abstract class ComponentListView extends StatelessWidget {
  List<ContainerItem> items;
  Page page;

  ComponentListView(this.items, this.page);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return instantiateWidgetByName(item.ctype as String, item, page);
        });
  }

  Widget instantiateWidgetByName(String ctype, ContainerItem item, Page page);
}
