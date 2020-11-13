import 'package:app_eggs/blocs/app.bloc.dart';
import 'package:app_eggs/blocs/type-buttons.widget.dart';
import 'package:app_eggs/widgets/action-buttons.widget.dart';
import 'package:app_eggs/widgets/progress.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(bloc.selected),
            Text(bloc.state),
            Text(bloc.time.toString()),
            Text(bloc.seconds.toString()),
            TypeButtons(),
            SizedBox(
              height: 20,
            ),
            ActionButtons(),
            Progress(),
          ],
        ),
      ),
    );
  }
}
