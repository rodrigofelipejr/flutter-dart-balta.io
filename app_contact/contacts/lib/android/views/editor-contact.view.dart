import 'package:contacts/android/styles.dart';
import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel model;

  EditorContactView({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: model == null ? Text("Novo Contato") : Text("Editar Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              initialValue: model?.name,
              onSaved: (val) {
                model.name = val;
              },
            ),
            TextFormField(
              initialValue: model?.phone,
              onSaved: (val) {
                model.phone = val;
              },
            ),
            TextFormField(
              initialValue: model?.email,
              onSaved: (val) {
                model.email = val;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {},
              color: primaryColor,
              child: Text(
                "Salvar",
                style: TextStyle(
                  color: accentColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
