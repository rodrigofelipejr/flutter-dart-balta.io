import 'package:app_shopping_2/blocs/cart.bloc.dart';
import 'package:app_shopping_2/models/cart-item.model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  final CartItemModel cartItem;

  const CartItem({Key key, @required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<CartBloc>(context);
    final price = new NumberFormat("#,##0.00", "pt_BR");

    return Container(
      height: 120,
      margin: EdgeInsets.all(5),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(10),
            child: Image.network(
              cartItem.image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(cartItem.title),
                SizedBox(height: 5),
                Text(
                  "R\$ ${price.format(cartItem.price)}",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(height: 5),
                Text("R\$ ${price.format((cartItem.price * cartItem.quantity))}"),
                SizedBox(height: 5),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: Text("-"),
                          onPressed: () {
                            bloc.decrease(cartItem);
                          },
                        ),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: Text(cartItem.quantity.toString()),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: Text("+"),
                          onPressed: () {
                            bloc.increase(cartItem);
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
