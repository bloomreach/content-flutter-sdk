part of pda.content.bloomreach;

abstract class Application extends StatefulWidget {
  final String baseUrl;
  final String channelId;
  Map<
      String,
      dynamic Function(Page page, ContainerItem item,
          [void Function(String newPath)? setPage])>? componentMapping;

  Application(this.baseUrl, this.channelId, [this.componentMapping]);

  @override
  ApplicationState createState();
}
