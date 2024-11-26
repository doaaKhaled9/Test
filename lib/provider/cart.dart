
import 'package:flutter/material.dart';
import 'package:test3/model/item.dart';

class Cart  with ChangeNotifier{

List selectproducts = [];
double price =0;


add(Item product){
  selectproducts.add(product);
  price += product.price.round();
  notifyListeners();
 }

 delete(Item product){
   selectproducts.remove(product);
    price -= product.price.round();
    notifyListeners();
 }


 
}



