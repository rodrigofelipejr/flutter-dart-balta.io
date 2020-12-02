import 'package:app_shopping_2/blocs/theme.bloc.dart';
import 'package:app_shopping_2/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<ThemeBloc>(context);

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            "Tema atual: ${Settings.theme}",
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Light"),
            onPressed: () {
              bloc.save("light");
            },
          ),
          FlatButton(
            child: Text("Dark"),
            onPressed: () {
              bloc.save("dark");
            },
          ),
          FlatButton(
            child: Text("Dark Yellow"),
            onPressed: () {
              bloc.save("dark-yellow");
            },
          ),
        ],
      ),
    );
  }
}
