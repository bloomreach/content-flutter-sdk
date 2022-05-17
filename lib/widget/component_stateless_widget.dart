part of pda.content.bloomreach;

abstract class ComponentStatelessWidget<T extends AbstractComponent, E extends Page>
    extends StatelessWidget {
  final T item;
  final E page;

  const ComponentStatelessWidget(Key? key, this.item, this.page): super(key: key);

  ComponentContent? getContent() {
    return item is ContainerItem
        ? (item as ContainerItem).getContent(page)
        : null;
  }
}
