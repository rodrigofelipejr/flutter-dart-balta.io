import 'package:app_shopping_2/blocs/account.bloc.dart';
import 'package:app_shopping_2/models/authenticate-user.model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var username = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Usuário",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Usuário inválido";
                  }
                  return null;
                },
                onSaved: (val) {
                  username = val;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Senha inválida";
                  }
                  return null;
                },
                onSaved: (val) {
                  password = val;
                },
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    _authenticate(context);
                  }
                },
                child: Text("Entrar"),
              )
            ],
          ),
        ),
      ),
    );
  }

  _authenticate(BuildContext context) async {
    var bloc = Provider.of<AccountBloc>(context, listen: false);

    var user = await bloc.authenticate(
      new AuthenticateModel(
        username: username,
        password: password,
      ),
    );

    if (user != null) {
      Navigator.pop(context);
      return;
    }

    final snackbar = SnackBar(content: Text("Usuário ou Senha inválidos"));
    _scaffoldKey.currentState.showSnackBar(snackbar);
  }
}
