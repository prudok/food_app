import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/app.dart';
import 'package:food_app/core/exception_handler.dart';
import 'package:food_app/core/injection.dart';
import 'package:food_app/features/notifications/data/datasource/firebase_api_impl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      await initializeDateFormatting();
      getIt.setDependencies();
      FlutterError.onError = (details) => getIt.get<ExceptionHandler>().send(
            details.exception,
            details.stack,
          );
      await getIt.get<FirebaseAPIImpl>().initNotifications();
      runApp(const FoodApp());
    },
    (error, stack) => getIt.get<ExceptionHandler>().send(error, stack),
  );
}
