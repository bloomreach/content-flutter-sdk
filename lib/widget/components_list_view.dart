part of pda.content.bloomreach;

abstract class ComponentsListView extends StatelessWidget {
  final List<ContainerItem> items;
  final Page page;
  void Function(String newPath)? setPage;

  ComponentsListView(this.items, this.page,[this.setPage]);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return instantiateWidgetByName(item.ctype, item, page, setPage);
        });
  }

  Widget instantiateWidgetByName(String ctype, ContainerItem item, Page page, [void Function(String newPath)? setPage]);
}
