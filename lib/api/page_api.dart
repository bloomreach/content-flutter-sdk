//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of pda.content.bloomreach;

class PageApi {
  PageApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Page by path
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] path (required):
  ///
  /// * [String] channelId (required):
  Future<Response> getPageWithHttpInfo(String page, String channelId) async {
    // ignore: prefer_const_declarations
    final path = r'/delivery/site/v1/channels/{channel_id}/pages/{path}'
        .replaceAll('{path}', page)
        .replaceAll('{channel_id}', channelId);

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      headerParams,
      contentTypes.isEmpty ? null : contentTypes[0],
    );
  }

  /// Get Page by path
  ///
  /// Parameters:
  ///
  /// * [String] path (required):
  ///
  /// * [String] channelId (required):
  Future<Page> getPage(String channelId, String path) async {
    final response = await getPageWithHttpInfo(path, channelId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(
          response.statusCode, await _decodeBodyBytes(response) as String);
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response) as String,
        'Page',
      ) as Page;
    }
    throw ApiException(response.statusCode, "Unknown Exception");
  }
}
