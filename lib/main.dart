// ignore_for_file: unused_import, prefer_const_constructors, avoid_web_libraries_in_flutter, import_of_legacy_library_into_null_safe, use_key_in_widget_constructors
// @dart=2.9
import 'package:e_ticaret_app/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:widget_utils/widget_utils.dart';
import 'constant/constant.dart';

void main() => runApp(ProviderScope(child:MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Grock.navigationKey,
      //scaffoldMessengerKey: Grock.SnackbarMessengerKey,

    theme: ThemeData(
      scaffoldBackgroundColor:Constant.white,
      
    ),
      // ignore: missing_required_param
      home: Splash()
    );
  }
}
