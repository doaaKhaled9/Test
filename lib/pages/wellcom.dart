import 'package:flutter/material.dart';
import 'package:test3/pages/home.dart';
import 'dart:async';

import 'package:test3/pages/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // تأخير لمدة 3 ثوانٍ قبل الانتقال إلى الصفحة الرئيسية
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Home(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // لون الخلفية
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // هنا يمكنك وضع أيقونة التطبيق أو صورة الشعار
            
             Image.asset("asstes/img/pic13.jpg" )
          ],
        ),
      ),
    );
  }
}


