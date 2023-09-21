import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:subhash_chandra_s_application3/core/locator.dart';
import 'app/app_provider.dart';
import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  locator();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///update theme state as per your need.
  ThemeHelper().changeTheme('primary');
  runApp(AppProvider());
}
