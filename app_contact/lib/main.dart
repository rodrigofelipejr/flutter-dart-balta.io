import 'dart:io';

import 'package:contacts/android/android.app.dart';
import 'package:flutter/material.dart';

import 'ios/ios.aap.dart';

void main() {
  if (Platform.isIOS) {
    runApp(IOSApp());
  } else {
    runApp(AndroidApp());
  }
}
