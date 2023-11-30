import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizz/components/cart_item.dart';
import 'package:quizz/models/shoe.dart';
import '../models/cart.dart';


class CartPage extends StatelessWidget {
  const CartPage ({super.key});

@override
  Widget build(BuildContext context){
    return Consumer<Cart>(builder: (
      context,valeu ,child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal:25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading do carrinho 
        const Text('MEU CARRINHO ',
        style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ),

        const SizedBox(height: 25),

        Expanded(child: ListView.builder(
          itemCount: valeu.getUserCart().length,
        itemBuilder: (context, index){
          // ignore: unused_local_variable
          Shoe individualShoe = valeu.getUserCart()[index];

          return CartItem(shoe: individualShoe);
           },
          ),
        ),

        ],
       ),
      ),
    );
  }
}