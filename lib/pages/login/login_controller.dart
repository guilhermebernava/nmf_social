// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:nmf_social/utils/alert_dialogs.dart';
import 'package:nmf_social/utils/validators.dart';
import '../../api/endpoints/login_endpoint.dart';

class LoginController {
  final formKey = GlobalKey<FormState>();

  Future<void> login(
      BuildContext context, String route, String email, String password) async {
    final isValid = Validators.validateInputs(formKey);

    if (!isValid) return;

    final res = await User.login(email, password);

    if (res) {
      Navigator.of(context).pushNamedAndRemoveUntil(route, (route) => false);
      return;
    }
    AlertDialogs.error(context);
  }
}
