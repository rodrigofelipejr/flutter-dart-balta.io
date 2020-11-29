import 'package:app_shopping_2/blocs/cart.bloc.dart';
import 'package:app_shopping_2/models/cart-item.model.dart';
import 'package:app_shopping_2/models/product-list-item.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class AddToCart extends StatelessWidget {
  final ProductListItemModel product;

  const AddToCart({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<CartBloc>(context);

    var cartItem = new CartItemModel(
      id: product.id,
      price: product.price,
      image: product.image,
      quantity: 1,
      title: product.title,
    );

    return Container(
      width: 80,
      height: 40,
      child: FlatButton(
        color: !bloc.itemInCart(cartItem) ? Theme.of(context).primaryColor : Colors.red,
        child: !bloc.itemInCart(cartItem) ? Icon(Icons.add_shopping_cart) : Icon(Icons.remove_shopping_cart),
        textColor: Colors.white,
        onPressed: () {
          if (!bloc.itemInCart(cartItem)) {
            bloc.add(cartItem);
            final _snackBar = SnackBar(content: Text("${product.title} adicionado"));
            Scaffold.of(context).showSnackBar(_snackBar);
          } else {
            bloc.remove(cartItem);
            final _snackBar = SnackBar(content: Text("${product.title} removido"));
            Scaffold.of(context).showSnackBar(_snackBar);
          }
        },
      ),
    );

    // if (!bloc.itemInCart(cartItem)) {
    //   print("1");
    //   return Container(
    //     width: 80,
    //     height: 40,
    //     child: FlatButton(
    //       color: Theme.of(context).primaryColor,
    //       child: Icon(Icons.add_shopping_cart),
    //       textColor: Colors.white,
    //       onPressed: () {
    //         bloc.add(cartItem);
    //         final _snackBar = SnackBar(content: Text("${product.title} adicionado"));
    //         Scaffold.of(context).showSnackBar(_snackBar);
    //       },
    //     ),
    //   );
    // } else {
    //   print("2");

    //   return Container(
    //     width: 80,
    //     height: 40,
    //     child: FlatButton(
    //       color: Theme.of(context).primaryColor,
    //       child: Icon(Icons.remove_shopping_cart),
    //       textColor: Colors.white,
    //       onPressed: () {},
    //     ),
    //   );
    // }
  }
}
