import 'package:app_shopping/pages/signup.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatelessWidget {
  // gera uma chave única para o formulário
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.all(40), // todos os lados
          padding: EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: [
              Container(
                //height: 450,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      offset: new Offset(1, 3.0),
                      blurRadius: 3,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 60,
                    bottom: 15,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Welcome,",
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                Text(
                                  "Sign in to continue",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                            FlatButton(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: "E-mail",
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
                              return 'Invalid E-mail';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          autofocus: true,
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
                              return 'Invalid Password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            child: Text(
                              "Forgot your password?",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: FlatButton(
                            //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  " - OR - ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          'assets/facebook.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        "Sign In with Facebook",
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          'assets/google.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        "Sign In with Google",
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
