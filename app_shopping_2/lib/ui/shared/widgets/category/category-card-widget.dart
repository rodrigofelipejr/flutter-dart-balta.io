import 'package:app_shopping_2/blocs/home.bloc.dart';
import 'package:app_shopping_2/models/category.model.dart';
import 'package:app_shopping_2/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  const CategoryCard({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = Provider.of<HomeBloc>(context);

    return Container(
      width: 70,
      height: 60,
      margin: EdgeInsets.all(5),
      // padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: category.tag == bloc.selectedCategory
            ? Theme.of(context).primaryColor.withOpacity(0.3)
            : Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(70)),
      ),
      child: FlatButton(
        child: Image.asset("assets/categories/${Settings.theme}/${category.tag}.png"),
        onPressed: () {
          bloc.changeCategory(category.tag);
        },
      ),
    );
  }
}
