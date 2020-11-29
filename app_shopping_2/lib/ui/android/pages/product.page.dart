import 'package:app_shopping_2/models/product-details.model.dart';
import 'package:app_shopping_2/repositories/product.repository.dart';
import 'package:app_shopping_2/ui/shared/widgets/shared/progress-indicator.widget.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String tag;
  final _repository = new ProductRepository();

  ProductPage({Key key, @required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ProductDetailsModel>(
      future: _repository.get(tag),
      builder: (context, snapshot) {
        ProductDetailsModel product = snapshot.data;
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text("Aguardando...");
            break;

          case ConnectionState.active:
          case ConnectionState.waiting:
            return Center(
              child: GenericProgressIndicator(),
            );
            break;

          case ConnectionState.done:
            if (snapshot.hasError) {
              return Center(
                child: Text("Não foi possível obter o produto"),
              );
            }
            return _content(product);
            break;
        }

        return null;
      },
    );
  }

  Widget _content(ProductDetailsModel product) {
    return Scaffold(
      appBar: AppBar(),
      body: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: product.images.length,
        itemBuilder: (BuildContext _context, int index) {
          return Container(
            width: 200,
            child: Image.network(
              product.images[index],
            ),
          );
        },
      ),
    );
  }
}
