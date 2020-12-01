import 'package:app_shopping_2/blocs/account.bloc.dart';
import 'package:app_shopping_2/ui/shared/widgets/account/authenticated-user-card.widget.dart';
import 'package:app_shopping_2/ui/shared/widgets/account/unauthenticated-user-card.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<AccountBloc>(context);

    return Scaffold(
      body: bloc.user == null ? UnauthenticatedUserCard() : AuthenticatedUserCard(),
    );
  }
}
