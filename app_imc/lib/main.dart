import 'package:app_imc/ui/android/material.app.dart';
import 'package:app_imc/ui/ios/cupertino-app.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

void main() {
  if (Platform.isIOS) {
    runApp(MyCupertinoApp());
  } else {
    runApp(MyMaterialApp());
  }
}
