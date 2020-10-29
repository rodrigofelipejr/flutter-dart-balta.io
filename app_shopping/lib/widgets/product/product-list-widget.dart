import 'package:app_shopping/widgets/product/product-card-widget.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  ProductList({
    @required this.scrollDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: scrollDirection,
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
}
