import 'package:app_shopping_2/ui/android/pages/cart.page.dart';
import 'package:app_shopping_2/ui/android/pages/home.page.dart';
import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          HomePage(),
          CartPage(),
          HomePage(),
          // CartPage(),
          // AccountPage(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.home),
          ),
          Tab(
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.shopping_cart,
                ),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "",
                      // bloc.cart.length.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Tab(
            icon: new Icon(Icons.perm_identity),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        // indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
