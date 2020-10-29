import 'package:app_shopping/pages/product.page.dart';
import 'package:app_shopping/widgets/category/category-list-widget.dart';
import 'package:app_shopping/widgets/product/product-card-widget.dart';
import 'package:app_shopping/widgets/search-box.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(
            15,
          ),
          color: Color(0xFFF5F5F5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 60,
              ),
              SearchBox(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  FlatButton(
                    child: Text("See All"),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                child: productList(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget productList(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ProductCard(
          title: "Nike Dry-Fot Long Sleeve",
          brand: "Nike",
          image: "assets/product-10.png",
          price: 150,
        ),
        ProductCard(
          title: "LEather Wristwtch",
          brand: "Tag Heuer",
          image: "assets/product-2.png",
          price: 450,
        ),
        ProductCard(
          title: "BeoPLay Speaker",
          brand: "Bang and Olufsen",
          image: "assets/product-1.png",
          price: 755,
        ),
        ProductCard(
          title: "Smart bluetooh Speaker",
          brand: "Google inc.",
          image: "assets/product-3.png",
          price: 900,
        ),
      ],
    ),
  );
}

Widget productItem(BuildContext context) {}
