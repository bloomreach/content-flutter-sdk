# pageapi.api.PageApi

## Load the API package
```dart
import 'package:pageapi/api.dart';
```

All URIs are relative to *https://kenan.bloomreach.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPage**](PageApi.md#getpage) | **GET** /delivery/site/v1/channels/{channel_id}/pages/{path} | Get Page by path


# **getPage**
> Page getPage(path, channelId)

Get Page by path

### Example
```dart
import 'package:pageapi/api.dart';

final api_instance = PageApi();
final path = path_example; // String | 
final channelId = channelId_example; // String | 

try {
    final result = api_instance.getPage(path, channelId);
    print(result);
} catch (e) {
    print('Exception when calling PageApi->getPage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**|  | 
 **channelId** | **String**|  | 

### Return type

[**Page**](Page.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

