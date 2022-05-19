part of pda.content.bloomreach;

abstract class ComponentStatelessWidget<T extends AbstractComponent,
    E extends Page> extends StatelessWidget {
  final T item;
  final E page;
  void Function(String newPath)? setPage;

  ComponentStatelessWidget(Key? key, this.item, this.page, [this.setPage])
      : super(key: key);

  ComponentContent? getContent() {
    return item is ContainerItem
        ? (item as ContainerItem).getContent(page)
        : null;
  }
}
