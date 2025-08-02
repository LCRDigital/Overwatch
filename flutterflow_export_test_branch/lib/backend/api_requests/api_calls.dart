import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start TLCiQ API Group Code

class TLCiQAPIGroup {
  static String getBaseUrl() => 'https://wjgnxhczppwnwmbtgyqp.supabase.co';
  static Map<String, String> headers = {};
  static GetAllUnitsCall getAllUnitsCall = GetAllUnitsCall();
  static GetASingleUnitByIDCall getASingleUnitByIDCall =
      GetASingleUnitByIDCall();
}

class GetAllUnitsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TLCiQAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get all units',
      apiUrl: '${baseUrl}/units',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetASingleUnitByIDCall {
  Future<ApiCallResponse> call({
    String? dealTypeUnit = '',
  }) async {
    final baseUrl = TLCiQAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get a single unit by ID',
      apiUrl: '${baseUrl}/units/${dealTypeUnit}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End TLCiQ API Group Code

/// Start TLCiQ Supabase API Group Code

class TLCiQSupabaseAPIGroup {
  static String getBaseUrl() => 'https://wjgnxhczppwnwmbtgyqp.supabase.co';
  static Map<String, String> headers = {};
  static ListAllUnitsCall listAllUnitsCall = ListAllUnitsCall();
  static GetAUnitByIDCall getAUnitByIDCall = GetAUnitByIDCall();
}

class ListAllUnitsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TLCiQSupabaseAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List all units',
      apiUrl: '${baseUrl}/units',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAUnitByIDCall {
  Future<ApiCallResponse> call({
    String? dealTypeUnit = '',
  }) async {
    final baseUrl = TLCiQSupabaseAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get a unit by ID',
      apiUrl: '${baseUrl}/units/${dealTypeUnit}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End TLCiQ Supabase API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
