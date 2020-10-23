import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: WListView(),
    );
  }
}

class WContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Meu App"),
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            "Essa é a minha primeira aplicação",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class WColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Meu App"),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.yellow,
              child: Text("Teste"),
            ),
            Text("item 1"),
            Text("item 2"),
            Text("item 3"),
            Text("item 4"),
            Text("item 5"),
          ],
        ),
      ),
    );
  }
}

class WRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Meu App"),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.yellow,
              child: Text("Teste"),
            ),
            Text("item 1"),
            Text("item 2"),
            Text("item 3"),
            Text("item 4"),
            Text("item 5"),
            Column(
              children: [
                Text("C1"),
                Text("C2"),
                Text("C2"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Meu App"),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.yellow,
              child: Text("Teste 1"),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
              child: Text("Teste 2"),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.yellow,
              child: Text("Teste 3"),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
              child: Text("Teste 5"),
            ),
          ],
        ),
      ),
    );
  }
}
