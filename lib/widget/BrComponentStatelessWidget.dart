part of pda.content.bloomreach;

abstract class BrComponentStatelessWidget<T extends AbstractComponent, E extends Page>
    extends StatelessWidget {
  final T item;
  final E page;

  const BrComponentStatelessWidget(Key? key, this.item, this.page): super(key: key);

  ComponentContent? getContent() {
    return item is ContainerItem
        ? (item as ContainerItem).getContent(page)
        : null;
  }
}
