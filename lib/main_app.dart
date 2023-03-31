import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview/flavor/flavor.dart';

import 'my_app.dart';

Future<void> mainApp(Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const MyApp());
}
