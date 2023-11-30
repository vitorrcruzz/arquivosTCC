import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
//ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottomNavBar ({super.key, required this.onTabChange });
  
 
  
  

@override
Widget build(BuildContext context){

  return Container(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: GNav(
      color: const Color.fromARGB(255, 76, 175, 80),
      activeColor: Colors.green,//shade700,
      tabActiveBorder: Border.all(color: Colors.green),
      tabBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
      mainAxisAlignment: MainAxisAlignment.center,
      tabBorderRadius: 16,
      gap: 8,
     onTabChange: (value) => onTabChange!(value),
      tabs:const[
      GButton(icon: Icons.home,//icon a se mudar de pois 
      text: 'shop',
      ),
      GButton(icon: Icons.shopping_bag_rounded,
      text: 'carinho',
      ),
     ]
    ),
   );
  }
}

