import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import 'package:quizz/pages/shop_page.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

State<HomePage> createState() => _HomePageState();
}
 class _HomePageState extends State<HomePage>{

// controle nav bar 
// ignore: unused_field
int _selectdIndex =0;
// final do bottom bar 

void navigatoBottomBar (int index){
  setState(() {
    _selectdIndex = index;
  });
}

// de projeto display 

// ignore: unused_field
final List<Widget>_pages =[
  //shop page
  const ShopPage(),

  // cart page 
  const CartPage(),
];
// abas de projeto  acima 



@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 255, 255, 255),//cor de fundo 
    bottomNavigationBar: MyBottomNavBar(
      onTabChange: (index) => navigatoBottomBar(index),
    ),

    appBar: AppBar(
      backgroundColor:Colors.green,//cor da homer 
      elevation: 500,
      leading:Builder(
      builder:(context)=> IconButton(
      icon: const Padding(
        padding: EdgeInsets.only(left:12.0),
        child: Icon(
          Icons.search,
        color:Colors.black,
        ),
      ),


      onPressed:() {
        Scaffold.of(context).openDrawer();
      } ,
      ),
      ),
    ),


    drawer: Drawer(
    backgroundColor:
    Colors.green, // cor do menu
 
  //começa qui 
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

     Column(
      children: [
         //logo
  DrawerHeader(child:
  Image.asset('img/1-branco.png', // logo da home 
  color: Colors.white,
     ),
    ),

    // pages

     const Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading:Icon(Icons.home,//icon a se mudar de pois 
        color: Colors.black,
        ),
        title: Text('home',
        style: TextStyle(color: Colors.white),
        ),
      ),
      ),



     const  Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading:Icon(Icons.info,//icon a se mudar de pois 
        color: Colors.black,
        ),
        title: Text('infomaçoes',
        style: TextStyle(color: Colors.white),
        ),
      ),
      ),
      ],
     ),

       const  Padding(
      padding: EdgeInsets.only(left: 25.0, bottom: 25),
      child: ListTile(
        leading:Icon(Icons.logout,//icon a se mudar de pois 
        color: Colors.black,
        ),
        title: Text('acesse aqui',
        style: TextStyle(color: Colors.white),
        ),
      ),
      ),
//termina aqui 

       ],
      ),
     
    ),
  
  
    body: _pages[_selectdIndex],
   );
  } 
}