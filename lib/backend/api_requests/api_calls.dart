import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start tran Group Code

class TranGroup {
  static String baseUrl = 'https://fin.examplus.co.in';
  static Map<String, String> headers = {};
  static TransactionCall transactionCall = TransactionCall();
}

class TransactionCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'transaction',
      apiUrl: '${TranGroup.baseUrl}/api/collections/transaction/records',
      callType: ApiCallType.GET,
      headers: {
        ...TranGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic amount(dynamic response) => getJsonField(
        response,
        r'''$.items[:].amount''',
        true,
      );
  dynamic main(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      );
}

/// End tran Group Code

class CreateUserCall {
  static Future<ApiCallResponse> call({
    String? iud = '',
    FFLocalFile? accountThumb,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateUser',
      apiUrl:
          'https://fin.examplus.co.in/api/collections/usersbyFirebase/records',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'uid': iud,
        'account_thumb': accountThumb,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
    );
  }
}

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
