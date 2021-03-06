import 'package:app_shopping_2/blocs/account.bloc.dart';
import 'package:app_shopping_2/blocs/cart.bloc.dart';
import 'package:app_shopping_2/blocs/home.bloc.dart';
import 'package:app_shopping_2/blocs/theme.bloc.dart';
import 'package:app_shopping_2/ui/android/pages/tabs.page.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeBloc>.value(
          value: HomeBloc(),
        ),
        ChangeNotifierProvider<CartBloc>.value(
          value: CartBloc(),
        ),
        ChangeNotifierProvider<AccountBloc>.value(
          value: AccountBloc(),
        ),
        ChangeNotifierProvider<ThemeBloc>.value(
          value: ThemeBloc(),
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
    final ThemeBloc bloc = Provider.of<ThemeBloc>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart Demo',
      theme: bloc.theme,
      home: DefaultTabController(
        length: 3,
        child: TabPage(),
      ),
    );
  }
}
