import 'package:flutter/material.dart';

class Validators {
  static String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return "e-mail can't be null";
    }
    if (!validateEmail(value)) {
      return "use this model example@example.com";
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value!.isEmpty) {
      return "e-mail can't be null";
    }
    if (!validatePassword(value)) {
      return "use this model Test123@ as example";
    }
    return null;
  }

  static bool validateEmail(String value) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    return emailValid;
  }

  static bool validatePassword(String password) {
    bool validPassword =
        RegExp(r"^(?=.\d)(?=.[a-z])(?=.[A-Z])(?=.[a-zA-Z]).{8,}$")
            .hasMatch(password);
    return validPassword;
  }

  static bool validateInputs(GlobalKey<FormState> formKey) {
    final form = formKey.currentState;

    if (form!.validate()) {
      return true;
    }
    return false;
  }
}
