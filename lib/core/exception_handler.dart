import 'package:flutter/foundation.dart';

/// ExceptionHandler Singleton class
/// is used  to send all types of exceptions
/// to your analytics database(crashlytics etc.)
class ExceptionHandler {
  factory ExceptionHandler() => _singleton;
  ExceptionHandler._();
  static final ExceptionHandler _singleton = ExceptionHandler._();
  Future<void> send(Object error, StackTrace? stackTrace) async {
    // handlinng exceptions, in real case the error'll be transferred to db
    if (kDebugMode) {
      print(' ---- Something went wrong. ---- ');
      print('Error: $error');
      print('StackTrace: \n $stackTrace');
    }
  }
}
