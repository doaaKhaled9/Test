import 'package:flutter/material.dart';
import 'package:test3/pages/wellcom.dart';
import 'package:provider/provider.dart';
import 'package:test3/provider/cart.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {return Cart ();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home :SplashScreen(),
      ),
    );
  }

}


  