import 'package:app_shopping/widgets/category/category-list-widget.dart';
import 'package:app_shopping/widgets/product/product-list-widget.dart';
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
                style: Theme.of(context).textTheme.headline,
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
                    style: Theme.of(context).textTheme.headline,
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
                child: ProductList(
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
