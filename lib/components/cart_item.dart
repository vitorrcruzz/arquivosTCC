import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizz/models/cart.dart';
import '../models/shoe.dart';

//ignore: must_be_immutable
class CartItem extends StatefulWidget {
Shoe shoe;
CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remoder item do carrinho 
  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemfromCart(widget.shoe);
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100],
      borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing:IconButton(icon:  Icon(Icons.delete),
        onPressed: removeItemFromCart,
        color: Colors.green,
        ),
      ),
    );
  }
}