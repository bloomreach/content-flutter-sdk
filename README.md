# pageapi
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.0 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  pageapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  pageapi:
    path: /path/to/pageapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:brcontent/api.dart';

final instance =
PageApi(ApiClient(basePath: 'https://sandbox-sales02.bloomreach.io'));

final path = path_example; // String | 
final channelId = channelId_example; // String | 

try {
    final Page page = await instance.getPage(channelId, path);
    print(page);
} catch (e) {
    print('Exception when calling PageApi->getPage: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *https://kenan.bloomreach.io*

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

