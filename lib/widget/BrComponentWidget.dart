part of pda.content.bloomreach;

abstract class BrComponentWidget<T extends AbstractComponent,
    E extends Page> extends Widget {
  final T item;
  final E page;

  const BrComponentWidget(Key? key, this.item, this.page) : super(key: key);

  ComponentContent? getContent() {
    return item is ContainerItem
        ? (item as ContainerItem).getContent(page)
        : null;
  }


}
