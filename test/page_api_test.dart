//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:brcontent/api.dart';
import 'package:test/test.dart';

import 'CarouselData.dart';

/// tests for PageApi
Future<void> main() async {
  final instance =
      PageApi(ApiClient(basePath: 'https://sandbox-sales02.bloomreach.io'));

  final Page page = await instance.getPage('mobile-native-demo', '');

  print(page.meta.branch);

  print(page.isPreview());

  var document = page.getDocument();

  print('document:' + document.toString());

  Container container = page.getComponentByPath('container');

  var components = container.getComponents(page);

  components.forEach((containerItem) {
    print(containerItem.ctype);
    if (containerItem.hasContent()) {
      print(containerItem.getContent(page)?.data);
      print('-----------');
    }
    if (containerItem.ctype == "IntroSlider") {
      var data = containerItem.getContent(page)?.data;
      CarouselData carouselData = new CarouselData.fromJson(data);
      print(carouselData);
    }
    if (containerItem.ctype == "List") {
      var pagination = containerItem.getPagination(page);
      var items = pagination?.getItems(page);
      print(items);
    }
  });

  page.page.values
      .where((element) => element.type == ElementTypeEnum.imageset)
      .map((e) => e as Imageset?)
      .forEach((element) {
    print(element!.getImageLink());
  });

  Component menu = page.getComponentByPath('menu');
  if (menu.hasMenu()) {
    menu
        .getMenu(page)
        ?.getSiteMenuItems()
        ?.forEach((item) => print(item.name.toString() + '-' + item.getLink().toString()));
  }
}
