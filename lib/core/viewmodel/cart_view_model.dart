import 'package:flutter/material.dart';
class CartProvider extends ChangeNotifier {
  List<String> _cartItems = [];
  double _total = 0;

  List<String> get cartItems => _cartItems;
  double get total => _total;
  int itemCount = 0;

  void addItem() {
    itemCount++;
    _cartItems.add('Item $itemCount');
    _total += 5;
    notifyListeners();
  }

  void deleteItem(int index) {
    itemCount--;
    _cartItems.removeAt(index);
    _total -= 5;
    notifyListeners();
  }

  void deleteAll() {  
    _cartItems.clear();
    _total = 0;
    itemCount = 0;
    notifyListeners();
  }
}
