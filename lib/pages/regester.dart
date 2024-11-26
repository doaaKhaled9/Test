import 'package:flutter/material.dart';
import 'package:test3/pages/home.dart';
import 'package:test3/pages/login.dart';
import 'package:test3/shared/constants.dart';
import '../shared/colors.dart';


class Rrgesters extends StatelessWidget {
  const Rrgesters ({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
    child : Scaffold(
      backgroundColor:Colors.white,
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(44.0),
        child:SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("asstes/img/pic14.jpg" , height: 300, width: 300,),
            
            
                const SizedBox(
                  height: 33,
                ),
            
               TextField(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(hintText: "Enter your Username:")),
            
            
                   ////// /////////////////////////////////////
                  
            
                    const SizedBox(
                  height: 15,
                ),
            
               TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(hintText: "Enter your Email :")),
            
            
            //////////////////////////////////////
            
                const SizedBox(
                  height: 15,
                ),
            
                TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: decorationTextfield.copyWith(hintText: "Enter your Password :")),
            
            
            const SizedBox(
                  height: 22),
            
                    ElevatedButton(
                      
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=> Home() ),
                    );
                    }, 
                        // ignore: sort_child_properties_last
                        child: Text
                        ("Register",
                        style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 255, 255, 255)),),
                        style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 24, 113, 51)),
                        padding:  WidgetStateProperty.all(const EdgeInsets.all(12)),
                        
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ))
                      ),
            
                      ),
                      
                      const SizedBox(
                  height: 15),
            
            
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Do not have an account?" ,style: TextStyle(fontSize: 18)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement
                        (context, MaterialPageRoute(
                         builder: (context)=> const Login1()),);
                      },
                      // icon:Icon(Icons.person, color: Colors.black, size: 24.0,) ,
                      //  label: Text
                      child: Text
                       ("Sign in" , style: TextStyle(color: Colors.black , fontSize: 18)),
                       ),
                    
                  ],)
            
            
            
            
            
            
              ],
            ),
          ),
        ),
      ),
    )
    ),
    );
  }
}
