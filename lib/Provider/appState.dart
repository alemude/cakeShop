import 'package:flutter/widgets.dart';
import 'package:cakeshop/model/productModel.dart';

class ProductsVM with ChangeNotifier {
  List<Products> lst = <Products>[];
  List<Products> get list => lst;

  add(String image, String name,String price, String quantiry) {
    lst.add(Products(image: image, name: name,price: price, quantity: quantiry));
    notifyListeners();
  }

  del(int index) {
    lst.removeAt(index);
    notifyListeners();
  }
   void clear() {
    lst.clear();
    notifyListeners();
  }
  void removeItem( Products item){
    lst.remove(item);
    notifyListeners();
  }
}