import 'package:contacts/android/android.app.dart';
import 'package:flutter/material.dart';
import 'dart:io'

void main() {
  if (Platform.isIOS) {

  } else {
    runApp(AndroidApp());
  }
}
