// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test3/provider/cart.dart';
import 'package:test3/shared/appar.dart';
import 'package:test3/shared/colors.dart';


// ignore: camel_case_types
class checkout extends StatelessWidget {
  const checkout({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final cartinstan =Provider.of<Cart>(context);
    return Scaffold(

      appBar: AppBar(
        backgroundColor: buttgreen1,
      
        title: Text("CheckOut Screen" , style: TextStyle(color: Colors.white),),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          productorice()
        ],
      ),
      body:Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 570,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: cartinstan.selectproducts.length,
                itemBuilder: (BuildContext context , int index){
                  return Card(
                    child: ListTile(
                       title: Text(cartinstan.selectproducts[index].Name),
                      subtitle: Text("${cartinstan.selectproducts[index].price} - ${cartinstan.selectproducts[index].location}"),
                      leading: CircleAvatar(backgroundImage: AssetImage(cartinstan.selectproducts[index].imgpath),),
                      trailing: IconButton(
                      onPressed: (){
                        cartinstan.delete(cartinstan.selectproducts[index]);
                      },
                      icon: Icon(Icons.remove)),
                    ),
                  );
                }
              ),
            ),
          ),

SizedBox(height: 70,),
          ElevatedButton(
          onPressed: (){},
          child: Text("Pay \$ ${cartinstan.price}" , style: TextStyle(fontSize: 19 , color: Colors.white), ),
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 76, 141, 95),),
              padding:  WidgetStateProperty.all(const EdgeInsets.all(12)),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ))
              ),
          
          
          
          
          )
        ],
      ) ,



     
    );
  }
}