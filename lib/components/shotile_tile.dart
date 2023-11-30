import 'package:flutter/material.dart';
import '../models/shoe.dart';

//ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
Shoe shoe;
void Function()? onTap;

ShoeTile({super.key, required this.shoe , required this.onTap});

  @override
  Widget build(BuildContext context) {
   
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
      borderRadius: BorderRadius.circular(12),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
 
       ClipRRect(borderRadius:BorderRadius.circular(12),
       child: Image.asset(shoe.imagePath),
       ),

        // descrião 

      Padding(
        padding: const EdgeInsets.symmetric(horizontal:25.0),
        child: Text(
          shoe.description,
          style: TextStyle(color: Colors.black),
          ),
      ),

        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Column(
              children: [
                // nome do produto
                const SizedBox(height: 5),
                
                // valor dos produtos 
                Text(
                '\$' + shoe.price, style: //valor do produto
                TextStyle(color: const Color.fromARGB(255, 0, 0, 0),
                ),
                )
              ],
            ),
             // bottam do de clique (segunda aba)
            GestureDetector(
              onTap: onTap ,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                ),
                ),
                child: Icon(
                Icons.add,//adicionar no carrinho 
                color: Color(0xFF4CAF50),
                ),
              ),
            )
        
            ],
          ),
        )
       

      ],
      ),
    );
  }
}