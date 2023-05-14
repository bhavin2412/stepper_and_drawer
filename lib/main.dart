import 'dart:html';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_and_drawer/provider/stepper_provider.dart';
import 'screen/home_page.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return ChangeNotifierProvider(
        create: (context) => StepperProvider(),
        child: MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => HomeScreen()
          },
        ),
      );
    },
    enabled: !kReleaseMode,
  ));
}
