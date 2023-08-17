import 'package:cakeshop/Provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Cart with ChangeNotifier{
  late List<CartItem> _items =[];
  List<CartItem> get items=>_items;
  double get total =>_items.fold(0,(sum,item)=>sum+item.price*item.quantiry);
  void addItem(CartItem item){
    final existingItem =_items.firstWhere((i) => i.name==item.name,orElse: ()=>CartItem(name: '', price: 0.0, quantiry: 0));
    if(existingItem!=CartItem(name: '', price: 0.0, quantiry: 0)){
      existingItem.quantiry++;
    }
    else{
      _items.add(item);
    }
    notifyListeners();
  }
void removeItem(CartItem item){
_items.remove(item);
 notifyListeners();
}
void clear(){
  _items=[];
  notifyListeners();
}
}