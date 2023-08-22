import 'package:flutter/widgets.dart';
import 'package:cakeshop/model/productModel.dart';

class ProductsVM with ChangeNotifier {
  List<Products> lst = <Products>[];

  add(String image, String name,String price, String quantiry) {
    lst.add(Products(image: image, name: name,price: price, quantity: quantiry));
    notifyListeners();
  }

  del(int index) {
    lst.removeAt(index);
    notifyListeners();
  }
   void clear(int index) {
    lst.removeAt(index);
    notifyListeners();
  }
}