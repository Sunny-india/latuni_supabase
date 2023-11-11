import 'package:flutter/material.dart';

class MyMessageHandler {
  static void showMySnackBar(
      {required var scaffoldKey, required String message}) {
    scaffoldKey.currentState!.showSnackBar(
      //
      SnackBar(
        //  behavior: SnackBarBehavior.floating,
        // width: size.width * .8,
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
      //
    );
  }
}
