// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test3/model/item.dart';
import 'package:test3/provider/cart.dart';
import 'package:test3/shared/appar.dart';
import 'package:test3/shared/colors.dart';






// ignore: must_be_immutable
class Details extends StatefulWidget {
  // const Details (String s, {super.key});

   Item product;
   
   // ignore: use_key_in_widget_constructors
   Details({required this.product});

  @override
  State<Details> createState() => _DetailsState();

}

class _DetailsState extends State<Details> {
  bool isDarkMode=false;
IconData _iconLight = Icons.wb_sunny;
IconData _iconDark  = Icons.nights_stay;
ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.amber,
  brightness: Brightness.light

);

ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark

);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme:isDarkMode?_darkTheme:_lightTheme ,
     
      home:  Scaffold(

      appBar: AppBar(
        
        
        // ignore: prefer_const_literals_to_create_immutables
        actions: [

          
         

          IconButton(onPressed: (){setState(() {
            isDarkMode=!isDarkMode;
          });}, icon: Icon(isDarkMode? _iconDark : _iconLight)),
          
          productorice()
        ],
        backgroundColor: buttgreen1,
        title: Text("Details Screen" , style: TextStyle(color: Colors.white ),)

        
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product.imgpath),
            SizedBox(height: 11,),
            Text("\$ ${widget.product.price}" ,
             style: 
            TextStyle(fontSize: 20),),
            SizedBox(height: 16,),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text("New" , style: TextStyle(fontSize: 15 , color: Colors.white),),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 121, 85, 49),
                    borderRadius: BorderRadius.circular(4)
                  ),
                ),
                SizedBox(width: 6),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 26 ,
                      color: Color.fromARGB(255, 255, 191, 0),),
        
                      Icon(
                      Icons.star,
                      size: 26 ,
                      color: Color.fromARGB(255, 255, 191, 0),),
        
                      Icon(
                      Icons.star,
                      size: 26 ,
                      color: Color.fromARGB(255, 255, 191, 0),),
        
        
                      Icon(
                      Icons.star,
                      size: 26 ,
                      color: Color.fromARGB(255, 255, 191, 0),),
        
                      Icon(
                      Icons.star,
                      size: 26 ,
                      color: Color.fromARGB(255, 255, 191, 0),),
                  ],
                ),
                SizedBox(width: 66),
                Row(
                  children: [
        
                    Icon(
                      Icons.edit_location ,
                       size: 26, 
                       color: Color.fromARGB(168, 3, 65,27),
                    ),
                    
                    SizedBox(
                      width: 3,
                    ),
                    Text(widget.product.location , style: TextStyle(fontSize: 19),)
                  ],
                )
        
               
                
        
        
                
        
              ],
              
            ),
        
            SizedBox(height: 16,),
        
                Container(
                  padding: EdgeInsets.all(4),
                  child: SizedBox(
                    
                    width: double.infinity,
                    child: Text("Details:" , style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.start,
                    ),
                  ),
                ) , 
        
                SizedBox(height: 16,),
        
        
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text("A flower , som Know as a bloom or blossm , is the perproductive structure found in floweing plants ,som Know as a bloom or blossm , is the perproductive structure found in floweing plants " , 
                  style: TextStyle(fontSize: 17),
                  ),
                  )
          ],
        ),
      ),
    ),);
  }
}