
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test3/model/item.dart';
import 'package:test3/pages/aboute.dart';
import 'package:test3/pages/checkout.dart';
import 'package:test3/pages/detilsScreen.dart';
import 'package:test3/pages/login.dart';
import 'package:test3/pages/manage.dart';
import 'package:test3/provider/cart.dart';
import 'package:test3/shared/appar.dart';
import 'package:test3/shared/colors.dart';



 class Home extends StatefulWidget {


   const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

bool isDarkMode=false;
IconData _iconLight = Icons.wb_sunny;
IconData _iconDark  = Icons.nights_stay;
ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.amber,
  brightness: Brightness.light

);

ThemeData _darkTheme = ThemeData(
 
  brightness: Brightness.dark

);

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    final cartinstan =Provider.of<Cart>(context);
    return MaterialApp(

      theme:isDarkMode?_darkTheme:_lightTheme ,
     
      
      
      

      
      home: Scaffold(
      
      body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
          
          // ignore: prefer_const_constructors
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 33),
            
            itemCount: items.length,
            itemBuilder: (BuildContext context , int index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> Details(product: items[index]) ),
                  );
                },
                child: GridTile(
                 // ignore: sort_child_properties_last
                 child: Stack(children: [
                   
                    
                    Positioned(
                    top: -3,
                    bottom: -9,
                    right: 0,
                    left: 0,
                    
                    child: ClipRRect(
                      
                      borderRadius: BorderRadius.circular(55),
                      child: Image.asset(items[index].imgpath),
                      ),
                  ),

                  
                  ]),

                  footer: GridTileBar(
                  
                    trailing: IconButton(
              // ignore: prefer_const_constructors
              color: Color.fromARGB(255, 62, 94, 70),
              onPressed: (){
                cartinstan.add(items[index]);
              },
              // ignore: prefer_const_constructors
              icon: Icon(Icons.add_shopping_cart_sharp) , iconSize: 20,),

              


          
                     title: Text(
                      "",
                    ),
                    // ignore: prefer_const_constructors
                    leading: Text("\$ 12.19" ),
                    // ignore: prefer_const_constructors
                    // title: Text(
                    //   "",
                    // ),
                  ),


                
                ),
              );
            }
            ),
        ),
      drawer: Drawer(

        
         surfaceTintColor: Color.fromARGB(255, 255, 255, 255),
         backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           
           
            Column(
              
              children: [
                UserAccountsDrawerHeader( 
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage("asstes/img/g4.jpg"),
                      fit: BoxFit.cover
                      
                       )
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 55,backgroundImage:AssetImage("asstes/img/g5.jpg"),
                  ),
                  
                  accountEmail: Text("Sada@IT.com"),
                  accountName: Text(
                    "Sada IT" , style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255))
                      ,),
                      ),
              
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder:(context)=> Home() ),
                  );
                    }
                  ),
                  ListTile(
                    title: Text("My products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder:(context)=> checkout() ),
                  );
                    }
                  ),
                  ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=> Aboute() ),
                  );
                    }
                    
                  ),
                  ListTile(
                    title: Text("Login"),
                    leading: Icon(Icons.login),
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=> Login1() ),
                  );
                    }
                  ),

                  ListTile(
                    title: Text("Manage"),
                    leading: Icon(Icons.manage_accounts),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> manage() ),
                  );
                    }
                  ),
              
              
              
              
              
              ],
            ),
            
            Container(
              
              margin: EdgeInsets.only(bottom: 12),
              child: Text("Developered by Sada @ 2024" , style: TextStyle(fontSize: 16),))
          
          ],
          
        ),
      ),
      appBar: AppBar(

         actions: [

          IconButton(onPressed: (){setState(() {
            isDarkMode=!isDarkMode;
          });}, icon: Icon(isDarkMode? _iconDark : _iconLight)),
          
        
        
        // ignore: prefer_const_literals_to_create_immutables
       

          // IconButton(onPressed: (){setState(() {
          //   isDarkMode=!isDarkMode;
          // });}, icon: Icon(isDarkMode? _iconDark : _iconLight)),],

         // ignore: prefer_const_constructors
         productorice()
        
          
        ],



        backgroundColor: buttgreen1,
        // ignore: prefer_const_constructors
        title:Text("Home" , style: TextStyle(color: Colors.white),)
        
     
     
      ),

    ),);
  }
}

