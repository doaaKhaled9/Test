// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test3/provider/cart.dart';
import 'package:test3/shared/appar.dart';
import 'package:test3/shared/colors.dart';


// ignore: camel_case_types
class Aboute extends StatefulWidget {
  const Aboute({super.key});

  @override
  State<Aboute> createState() => _AbouteState();
}

class _AbouteState extends State<Aboute> {
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
    // ignore: unused_local_variable
    final cartinstan =Provider.of<Cart>(context);



    
    return MaterialApp(
      
       theme:isDarkMode?_darkTheme:_lightTheme ,

      home: Scaffold(

      appBar: AppBar(

        
        

       
          
        backgroundColor: buttgreen1,
      
        title: Text("Aboute Screen" , style: TextStyle(color: Colors.white),),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
           IconButton(onPressed: (){setState(() {
            isDarkMode=!isDarkMode;
          });}, icon: Icon(isDarkMode? _iconDark : _iconLight)),
          productorice()
        ],
      ),
      body:Container(
        padding: EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
          
                Image.asset("asstes/img/pic11.jpg" , height: 300, width: 400,),
                SizedBox(height: 20,),
                Text("Aboute of the Organic farm store " , style: TextStyle(color: const Color.fromARGB(255, 40, 98, 42),fontSize: 22, ),),
                SizedBox(height: 20,),
                Text("Plants are autotrophs; they produce their own food. They do so via photosynthesis, which is the process of making nutrients such as sugars from light energy and carbon dioxide. Photosynthesis occurs in cell organelles called chloroplasts, which contain chlorophyll and carotenoids, molecules that absorb light energy and change it into a usable form. Heterotrophs, on the other hand, are organisms that cannot make their own food and must eat other organisms to survive. Many heterotrophs eat plants. Other heterotrophs eat animals that have eaten plants. Plants are primary producers in many ecosystems, giving them a vital role in the survival of many other organisms. In addition, oxygen is a byproduct of photosynthesis, and many organisms depend on oxygen to survive. We couldn’t live without plants.",
                 style: 
                TextStyle(fontSize: 18),),
                
            
                
            ],
          ),
        ),
      ) ,



     
    ),);
  }
}