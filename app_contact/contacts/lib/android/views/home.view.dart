import 'package:contacts/android/styles.dart';
import 'package:contacts/android/views/details.view.dart';
import 'package:flutter/material.dart';

import 'editor-contact.view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Meus contatos",
        ),
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
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://source.unsplash.com/user/erondu/150x150"),
                ),
              ),
            ),
            title: Text("André Figueiredo"),
            subtitle: Text("11 9 8845-3278"),
            trailing: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsView(),
                  ),
                );
              },
              child: Icon(
                Icons.chat,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(),
            ),
          );
        },
        backgroundColor: primaryColor,
        child: Icon(
          Icons.add,
          color: accentColor,
        ),
      ),
    );
  }
}
