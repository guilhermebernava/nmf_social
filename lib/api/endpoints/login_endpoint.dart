import 'dart:convert';
import 'package:nmf_social/utils/validators.dart';
import '../api.dart';

class User {
  static Future<bool> login(String email, String password) async {
    bool isValidEmail = Validators.validateEmail(email);

    if (!isValidEmail) return false;

    var res = await Api.client.post(
      Uri.parse("${Api.url}/login"),
      body: jsonEncode(
        <String, dynamic>{'email': email, 'password': password},
      ),
      headers: <String, String>{
        'Content-type': 'application/json',
      },
    ).catchError(
      (e) {
        throw Exception(e.message);
      },
      test: (error) => error is Exception,
    );

    if (res.statusCode == 404 || res.statusCode == 401) {
      return false;
    }
    return true;
  }
}
