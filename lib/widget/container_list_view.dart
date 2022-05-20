part of pda.content.bloomreach;

class ContainerItemComponentsListView extends MappedComponentsListView {
  ContainerItemComponentsListView(
      Map<
              String,
              dynamic Function(Page page, ContainerItem item,
                  [void Function(String newPath)? setPage])>?
          componentMapping,
      Container container,
      Page page,
      [void Function(String newPath)? setPage])
      : super(componentMapping, container.getComponents(page), page, setPage);
}
