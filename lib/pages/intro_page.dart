import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 76, 175, 80),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:25.0 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
        //logo
          Padding(padding: const EdgeInsets.all(25.0),
         child: Image.asset('img/1-branco.png',height: 240, ),//papel de parede 
        ),
          
      
          const SizedBox(height: 48),
        //title   
           const Text(
         'Além das fronteiras viagens internacionais ',
           style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 20,
         ),
           ),
      
        const SizedBox(height:24),
        
        //sub title
            const Text('venha conhecer a nossa agencia internacional.',
          style: TextStyle(
          fontSize: 16,
          color: Colors.black,
          ),
          textAlign: TextAlign.center,
      ), 
           
          const SizedBox(height:48),

        // start now buttom   


          GestureDetector(
            onTap:() => Navigator.push(context,
            MaterialPageRoute(builder:(
              context) => HomePage ()
            ),
          ),

            child: Container(
              decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12)
              ),
              padding: const EdgeInsets.all(25),
              child: const Center(
                child: Text(
                'Veja Mais',
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16),
                ),
              ),
             ),
          )
           
          ],
        ),
      ),
    ),
  );
} 
}