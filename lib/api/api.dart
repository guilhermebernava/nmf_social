import 'dart:convert';
import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'interceptor.dart';

class Api {
  // ignore: constant_identifier_names
  static const url = "https://localhost:7228";
  static Client client = InterceptedClient.build(
    interceptors: [InterceptorNodeApi()],
  );

  static Future<Response> sendRequest(String endpoint,
      Map<String, dynamic> body, Map<String, String> headers) async {
    var res = await Api.client.post(
      Uri.parse(Api.url + endpoint),
      body: jsonEncode(
        body,
      ),
      headers: <String, String>{'Content-type': 'application/json', ...headers},
    ).catchError(
      (e) {
        throw Exception(e.message);
      },
      test: (error) => error is Exception,
    );

    return res;
  }
}
