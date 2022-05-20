part of pda.content.bloomreach;

abstract class ApplicationState<T extends Application> extends State<T> {
  String? baseUrl;
  String? channelId;
  late Future<Page> page;
  String currentPath = '';
  Map<
      String,
      dynamic Function(Page page, ContainerItem item,
          [void Function(String newPath)? setPage])>? componentMapping;

  @override
  void initState() {
    super.initState();
    this.channelId = widget.channelId;
    this.baseUrl = widget.baseUrl;
    this.componentMapping = widget.componentMapping;
    currentPath = Uri.base.path;
    update();
  }

  void setPage(String newPath) {
    setState(() {
      currentPath = newPath;
      update();
    });
  }

  void update() {
    if (baseUrl != null && channelId != null) {
      final String? token = Uri.base.queryParameters["token"];
      final String? serverId = Uri.base.queryParameters["server-id"];
      final String path = currentPath;

      final pageApi = PageApi(ApiClient(basePath: baseUrl ?? ''));

      if (token != null && serverId != null) {
        pageApi.apiClient.defaultHeaderMap
            .putIfAbsent("Authorization", () => "Bearer " + token);
        pageApi.apiClient.defaultHeaderMap
            .putIfAbsent("Server-Id", () => serverId);
      }
      page = pageApi.getPage(channelId ?? '', path.replaceFirst('/', ''));
    } else {
      throw new Exception('base url and channel id are not set');
    }
  }

  Widget buildPage(BuildContext context, Page page);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Page>(
      future: page,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Page page = snapshot.data as Page;
          return buildPage(context, page);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        // By default, show a loading spinner.
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
