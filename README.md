# BR Content - Flutter SDK
Bloomreach Content Flutter SDK - Features a Page Delivery API Client & an SDK to render data from the API to the view.

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.0 or later

## Getting Started with the API Client

Please follow the installation procedure and then run the following:

```dart
import 'package:brcontent/api.dart';

final instance =
PageApi(ApiClient(basePath: 'https://sandbox-sales02.bloomreach.io'));

final path = path_example; // String | 
final channelId = channelId_example; // String | 

try {
    final Page page = await instance.getPage(channelId, path);
    print(page);

    Container container = page.getComponentByPath('container') ;

    var components = container.getComponents(page);

    components.forEach((containerItem) {
      print(containerItem!.name);
      if (containerItem.hasContent()) {
        print(containerItem.getContent(page)?.data);
        print('-----------');
      }
    });
} catch (Exception e) {
    print('Exception when calling PageApi->getPage: $e\n');
}

```
for more examples on the API client: https://github.com/bloomreach/content-flutter-sdk/blob/master/test/page_api_test.dart

## Getting Started with the Rendering SDK

### examples

https://github.com/bloomreach/content-flutter-demo/blob/master/lib/main.dart

### Create a new flutter project

https://docs.flutter.dev/get-started/install

### Install the brcontent dependency

https://pub.dev/packages/brcontent/install

### Edit the main.dart

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

## Documentation for API Endpoints

All URIs are relative to *https://{account}.bloomreach.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PageApi* | [**getPage**](doc//PageApi.md#getpage) | **GET** /delivery/site/v1/channels/{channel_id}/pages/{path} | Get Page by path


## Documentation For Models

 - [AbstractComponent](doc//AbstractComponent.md)
 - [Channel](doc//Channel.md)
 - [ChannelInfo](doc//ChannelInfo.md)
 - [Component](doc//Component.md)
 - [ComponentContent](doc//ComponentContent.md)
 - [ComponentMeta](doc//ComponentMeta.md)
 - [Container](doc//Container.md)
 - [ContainerItem](doc//ContainerItem.md)
 - [Data](doc//Data.md)
 - [Document](doc//Document.md)
 - [Element](doc//Element.md)
 - [Image](doc//Image.md)
 - [ImageData](doc//ImageData.md)
 - [Imageset](doc//Imageset.md)
 - [Link](doc//Link.md)
 - [Menu](doc//Menu.md)
 - [MenuItem](doc//MenuItem.md)
 - [Page](doc//Page.md)
 - [PageMeta](doc//PageMeta.md)
 - [Pagination](doc//Pagination.md)
 - [PaginationPage](doc//PaginationPage.md)
 - [Pointer](doc//Pointer.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author

kenan.salic@bloomreach.com

## Support

This is an open source community driven project that is not support and maintained by Bloomreach engineering.

