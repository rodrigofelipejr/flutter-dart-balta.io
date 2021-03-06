import 'package:contacts/android/styles.dart';
import 'package:contacts/android/views/address.view.dart';
import 'package:contacts/android/views/editor-contact.view.dart';
import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://source.unsplash.com/user/erondu/200x200"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "André Figueiredo",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "11 9 8845-3278",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "andrefig@ig.com",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlatButton(
                onPressed: () {},
                color: primaryColor,
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
                child: Icon(
                  Icons.phone,
                  color: accentColor,
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: primaryColor,
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
                child: Icon(
                  Icons.email,
                  color: accentColor,
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: primaryColor,
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
                child: Icon(
                  Icons.camera_enhance,
                  color: accentColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              "Endereço",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rua do Desenvolvedor, 256",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Piracicaba/SP",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            isThreeLine: true,
            trailing: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddressView(),
                  ),
                );
              },
              child: Icon(
                Icons.pin_drop,
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
              builder: (context) => EditorContactView(
                model: ContactModel(
                  id: "1",
                  name: "André Figueiredo",
                  email: "andrefig@ig.com",
                  phone: "11 9 8845-3278",
                ),
              ),
            ),
          );
        },
        backgroundColor: primaryColor,
        child: Icon(
          Icons.edit,
          color: accentColor,
        ),
      ),
    );
  }
}
