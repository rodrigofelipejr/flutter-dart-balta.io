import 'package:app_shopping_2/blocs/home.bloc.dart';
import 'package:app_shopping_2/ui/shared/widgets/category/category-list.widget.dart';
import 'package:app_shopping_2/ui/shared/widgets/product/product-list.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // pegando uma versão que já está na memória
    final HomeBloc bloc = Provider.of<HomeBloc>(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "Categorias",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 10,
            ),
            CategoryList(
              categories: bloc.categories,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Main Vendidos",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 10,
            ),
            ProductList(
              products: bloc.products,
            ),
          ],
        ),
      ),
    );
  }
}
