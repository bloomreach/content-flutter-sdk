# Getting Started with the Rendering SDK

## examples

https://github.com/bloomreach/content-flutter-demo/blob/master/lib/main.dart

## Create a new flutter project

https://docs.flutter.dev/get-started/install

## Install the brcontent dependency

https://pub.dev/packages/brcontent/install

## Edit the main.dart

```dart
import 'package:brcontent/api.dart' as br;

void main() {
  runApp(DemoApplication("https://sandbox-sales02.bloomreach.io", 'mobile-native-demo', getComponentMapping()));
}

class DemoApplication extends br.Application {

  DemoApplication(String baseUrl, String channelId,Map<String, Function(br.Page page, br.ContainerItem item, [void Function(String newPath)? setPage])> componentMapping)
      : super(baseUrl, channelId, componentMapping);

  @override
  br.ApplicationState<br.Application> createState() {
    return DemoApplicationState();
  }
}

class DemoApplicationState extends br.ApplicationState {

  @override
  Widget buildPage(BuildContext context, br.Page page) {
    br.Component menuComponent = page.getComponentByPath('menu'); //get the menu
    br.Menu menu = menuComponent.getMenu(page) as br.Menu;

    br.Container container = page.getComponentByPath('container'); //get a container component by path

    return MaterialApp(
      title: page.getDocument()?.getData('title'),
      home: Scaffold(
        drawer: ..,
        appBar: ..),
        body: br.ContainerItemComponentsListView(componentMapping, container, page, setPage), //this will render eacht container item component in a listview
      ),
    );
  }
}

//mapping components to widgets by the container item's ctype
getComponentMapping() {
  Map<String, dynamic Function(br.Page page, br.ContainerItem item, [void Function(String newPath)? setPage])>
  components = HashMap();
  components.putIfAbsent(
      "IntroSlider",
          () => (br.Page page, br.ContainerItem item, [void Function(String newPath)? setPage]) =>
          CarouselWidget(item: item, page: page));
  components.putIfAbsent(
      "BannerCollection",
          () => (br.Page page, br.ContainerItem item, [void Function(String newPath)? setPage]) =>
          BannerCollection(item: item, page: page));
  components.putIfAbsent(
      "TitleAndText",
          () => (br.Page page, br.ContainerItem item, [void Function(String newPath)? setPage]) =>
          TitleAndTextWidget(item: item, page: page));
  components.putIfAbsent(
      "List",
          () => (br.Page page, br.ContainerItem item, [void Function(String newPath)? setPage]) =>
          ListWidget(item: item, page: page, setPage: setPage));
  return components;
}

```


