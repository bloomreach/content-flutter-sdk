//
// AUTO-GENERATED FILE, DO NOT MODIFY!


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library pda.content.bloomreach;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:flutter/cupertino.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/page_api.dart';

part 'model/abstract_component.dart';
part 'model/channel.dart';
part 'model/channel_info.dart';
part 'model/component.dart';
part 'model/component_content.dart';
part 'model/component_meta.dart';
part 'model/container.dart';
part 'model/container_item.dart';
part 'model/data.dart';
part 'model/document.dart';
part 'model/element.dart';
part 'model/image.dart';
part 'model/image_data.dart';
part 'model/imageset.dart';
part 'model/link.dart';
part 'model/links.dart';
part 'model/elements.dart';
part 'model/menu.dart';
part 'model/menu_item.dart';
part 'model/page.dart';
part 'model/page_meta.dart';
part 'model/pagination.dart';
part 'model/pagination_page.dart';
part 'model/pointer.dart';
part 'widget/BrComponentStatelessWidget.dart';
part 'widget/BrComponentWidget.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
