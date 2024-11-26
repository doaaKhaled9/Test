
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test3/pages/checkout.dart';
import 'package:test3/provider/cart.dart';




// ignore: camel_case_types
class productorice extends StatelessWidget {
  const productorice({super.key});

  @override
  Widget build(BuildContext context) {

    final cartinstan =Provider.of<Cart>(context);
    return  Row(
            
            children: [

             Stack(
                 children: [
                   Positioned(
                    bottom: 24,
                     child: Container(
                      // ignore: sort_child_properties_last
                      child: Text(
                        "${cartinstan.selectproducts.length}" ,
                         style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 0, 0, 0)),
                         ),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(211, 164, 255, 193),
                        shape: BoxShape.circle
                     
                      ),
                      
                      ),
                   ),
                   IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> checkout() ),
                  );
                   }, icon: Icon(Icons.add_shopping_cart)),
                 ],
               ),
         
            
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                
                  "\$ ${cartinstan.price}" , style: TextStyle(
                    color:Color.fromARGB(255, 255, 255, 255) ,
                    fontSize: 16)  ,),
              ) 
             
            ],
          );
  }
}