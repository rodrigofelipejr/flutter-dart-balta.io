import 'package:contacts/ios/style.dart';
import 'package:contacts/ios/views/home.view.dart';
import 'package:contacts/ios/views/splash.view.dart';
import 'package:flutter/cupertino.dart';

class IOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts',
      theme: iosTheme(),
      home: CupertinoPageScaffold(
        child: Container(
          child: Center(
            child: HomeView(),
          ),
        ),
      ),
    );
  }
}
