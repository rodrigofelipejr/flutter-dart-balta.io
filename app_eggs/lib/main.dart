import 'package:app_eggs/pages/splash.page.dart';
import 'package:app_eggs/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'blocs/app.bloc.dart';

void main() => (MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppBloc>.value(
          value: AppBloc(),
        ),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfect Eggs',
      theme: appTheme(),
      home: SplashPage(),
    );
  }
}
