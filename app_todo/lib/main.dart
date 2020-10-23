import 'dart:convert';

import 'package:app_todo/models/item.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart'; // para ios
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  var items = new List<Item>();

  HomePage() {
    items = [];
    // items.add(Item(title: "Banana", done: false));
    // items.add(Item(title: "Abacate", done: true));
    // items.add(Item(title: "Laranja", done: false));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var newTaskController = TextEditingController();

  void add() {
    if (newTaskController.text.isEmpty) return;

    setState(() {
      widget.items.add(
        Item(title: newTaskController.text, done: false),
      );
      newTaskController.clear();
      save();
    });
  }

  void remove(int index) {
    setState(() {
      widget.items.removeAt(index);
      save();
    });
  }

  Future load() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    var data = sharedPreferences
        .getString('data'); // lendo informcações (key com nome 'data')
    if (data != null) {
      Iterable decoded = jsonDecode(data); // lista gerérica
      List<Item> result = decoded
          .map((item) => Item.fromJson(item))
          .toList(); // convertendo para uma lista
      setState(() {
        widget.items = result;
      });
    }
  }

  Future save() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('data', jsonEncode(widget.items));
  }

  // chamando o contrutor, para carregar apenas 1 vez
  _HomePageState() {
    load();
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold -> comportamento de página mesmo
    return Scaffold(
        appBar: AppBar(
          title: TextFormField(
            controller: newTaskController,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            decoration: InputDecoration(
                labelText: "Nova tarefa",
                labelStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final item = widget.items[index];
            return Dismissible(
              key: Key(item.title),
              child: CheckboxListTile(
                  title: Text(item.title),
                  onChanged: (value) {
                    setState(() {
                      item.done = value;
                      save();
                    });
                  },
                  value: item.done),
              background: Container(
                color: Colors.red.withOpacity(0.2),
                child: Text("Excluir"),
              ),
              onDismissed: (direction) {
                remove(index);
              },
            );
          },
          itemCount: widget.items.length,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: add,
          child: Icon(Icons.add),
          backgroundColor: Colors.pink,
        ));
  }
}
