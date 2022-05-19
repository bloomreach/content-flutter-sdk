part of pda.content.bloomreach;

abstract class ComponentStatefulWidget<T extends AbstractComponent,
    E extends Page> extends StatefulWidget {
  final T item;
  final E page;

  const ComponentStatefulWidget(Key? key, this.item, this.page) : super(key: key);

  ComponentContent? getContent() {
    return item is ContainerItem
        ? (item as ContainerItem).getContent(page)
        : null;
  }


}
