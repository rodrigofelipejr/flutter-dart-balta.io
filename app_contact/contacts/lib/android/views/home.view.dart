import 'package:contacts/android/styles.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Meus contatos"),
        centerTitle: true,
        leading: FlatButton(
          child: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {},
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
              leading: Image.network(
                "https://source.unsplash.com/user/erondu/150x150",
              ),
              title: Text("Rodrigo Felipe"),
              subtitle: Text("11 9 9999-9999"),
              trailing: FlatButton(
                onPressed: () {},
                child: Icon(
                  Icons.chat,
                  color: primaryColor,
                ),
              ))
        ],
      ),
    );
  }
}
