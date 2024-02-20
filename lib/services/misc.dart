import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:penka_task/models/Penka.dart';

class Client {
  static Future<dynamic> get({
    required String url,
    Map<String, String>? headers,
    Map<String, String>? parameters,
  }) async {
    try {
      var host = Uri.parse(url);
      host = parameters != null ? addParametersToUri(host, parameters) : host;

      print("Request URL: $host");
      print("Request PARAMS: $parameters");

      final requestHeaders = headers != null
          ? addHeader(_defaultHeaders(), headers)
          : _defaultHeaders;

      final http.Response response =
          await http.get(host, headers: requestHeaders);
      return jsonDecode(response.body);
    } catch (error) {
      return _errorHandler(error);
    }
  }

  static Map<String, String> _defaultHeaders() {
    Map<String, String> headers = {
      "Content-type": "application/json",
    };
    return headers;
  }

  static addHeader(Map<String, String> header, Map<String, String> newHeader) {
    Map<String, String> result = {...header, ...newHeader};
    return result;
  }

  static Map _errorHandler(error) {
    final String errorMessage = error.toString();

    return {'error': errorMessage};
  }

  static addParametersToUri(Uri uri, Map<String, String> parameters) {
    final uriParameters = uri.queryParameters;
    final result = {...uriParameters, ...parameters};
    return uri.replace(queryParameters: result);
  }
}
