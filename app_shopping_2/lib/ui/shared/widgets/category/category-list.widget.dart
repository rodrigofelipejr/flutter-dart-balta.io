import 'package:app_shopping_2/ui/shared/widgets/shared/loader.widget.dart';
import 'package:flutter/widgets.dart';
import 'package:app_shopping_2/models/category.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'category-card-widget.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategoryList({Key key, this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Loader(
        object: categories,
        callback: _buildList,
      ),
    );
  }

  Widget _buildList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        CategoryModel itemCategory = categories[index];

        return Padding(
          padding: EdgeInsets.all(5),
          child: CategoryCard(
            item: itemCategory,
          ),
        );
      },
    );
  }
}
