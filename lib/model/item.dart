
class Item{
  String imgpath;
  double price ;
  String location;
  String Name;


  Item({required this.imgpath , required this.price , required this.location , required this.Name});
}


   List <Item> items =[ 
    
    Item ( Name : "Maple", imgpath : "asstes/img/pic1.jpg"  ,  price: 12.19  , location : "Mukall Shop" ),
    Item ( Name : "Buzzer", imgpath : "asstes/img/pic2.jpg"  ,  price: 12.19  , location : "Marena Shop" ),
    Item ( Name : "Jasmine", imgpath : "asstes/img/pic4.jpg"  ,  price: 13.19  , location : "Alslam Shop" ),
    Item ( Name : "Blueberry", imgpath : "asstes/img/pic5.jpg"  ,  price: 15.1   , location : "Alhabeb Shop"),
    Item ( Name : "Narcissus", imgpath : "asstes/img/pic7.jpg"  ,  price: 16.00  , location : "Senter Shop" ),
    Item ( Name : "Sunflower", imgpath : "asstes/img/pic3.jpg"  ,  price: 11.9   , location : "Farah Shop"  ),
    Item ( Name : "Chrysanthemum", imgpath : "asstes/img/pic8.jpg"  ,  price: 12.19  , location : "Top Shop"    ),
    Item ( Name : "Orange", imgpath : "asstes/img/pic10.jpg" ,  price: 12.19  , location : "News Shop"   ),
    
    

  
  
  ];