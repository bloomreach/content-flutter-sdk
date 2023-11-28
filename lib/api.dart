//
// AUTO-GENERATED FILE, DO NOT MODIFY!
// @dart=2.12

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
// import 'package:flutter/material.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';

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
part 'model/menu_data.dart';
part 'model/menu_item.dart';
part 'model/page.dart';
part 'model/page_meta.dart';
part 'model/pagination.dart';
part 'model/pagination_page.dart';
part 'model/pointer.dart';
// part 'widget/component_stateless_widget.dart';
// part 'widget/context.dart';
// part 'widget/component_statefulwidget.dart';
// part 'widget/components_list_view.dart';
// part 'widget/mapped_components_list_view.dart';
// part 'widget/container_list_view.dart';
// part 'widget/application.dart';
// part 'widget/application_state.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
