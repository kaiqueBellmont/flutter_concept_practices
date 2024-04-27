import 'package:flutter/material.dart';

class CustomSnackBar {
  static SnackBar buildSnackBar(String message) {
    return SnackBar(
      backgroundColor: Colors.blue,
      behavior: SnackBarBehavior.floating,
      closeIconColor: Colors.white,
      showCloseIcon: true,
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
