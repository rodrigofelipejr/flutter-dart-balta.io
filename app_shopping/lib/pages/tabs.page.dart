import 'package:app_shopping/pages/cart.page.dart';
import 'package:app_shopping/pages/home.page.dart';
import 'package:app_shopping/pages/login.page.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          HomePage(),
          CartPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.home),
            // text: "Home",
          ),
          Tab(
            icon: new Icon(Icons.shopping_cart),
            // text: "Cart",
          ),
          Tab(
            icon: new Icon(Icons.perm_identity),
            // text: "Profile",
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
