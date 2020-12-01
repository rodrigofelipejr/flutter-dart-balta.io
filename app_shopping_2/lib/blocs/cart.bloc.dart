import 'package:app_shopping_2/models/cart-item.model.dart';
import 'package:flutter/widgets.dart';

class CartBloc extends ChangeNotifier {
  var cart = new List<CartItemModel>();
  double total = 0;

  get() {
    return cart;
  }

  add(CartItemModel item) {
    cart.add(item);
    notifyListeners();
  }

  remove(CartItemModel item) {
    cart.removeWhere((_item) => _item.id == item.id);
    notifyListeners();
  }

  itemInCart(CartItemModel item) {
    var result = false;
    cart.forEach((_item) {
      result = _item.id == item.id ? true : false;
    });

    return result;
  }

  increase(CartItemModel item) {
    if (item.quantity < 10) {
      item.quantity++;
      calculateTotal();
    }
  }

  decrease(CartItemModel item) {
    if (item.quantity > 1) {
      item.quantity--;
      calculateTotal();
    }
  }

  calculateTotal() {
    total = 0;
    cart.forEach((item) => total += item.price * item.quantity);
    notifyListeners();
  }
}
