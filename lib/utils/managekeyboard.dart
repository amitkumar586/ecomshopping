import 'package:flutter/material.dart';

class KeyboardUtil {
  static void hideKeyBoard(BuildContext context) {
    FocusScopeNode currentFoucus = FocusScope.of(context);

    if (!currentFoucus.hasPrimaryFocus) {
      currentFoucus.unfocus();
    }
  }
}
