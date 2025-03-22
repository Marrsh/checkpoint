import 'package:flutter/material.dart';

class ErrorHandler {
  static log({required String error}) {
    debugPrint(error);
    // TODO:: add better error handling
  }
}
