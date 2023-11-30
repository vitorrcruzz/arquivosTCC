import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/shotile_tile.dart';
import '../models/shoe.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage ({super.key});
@override
State<ShopPage> createState() => _ShopPageState();
}

class  _ShopPageState extends State<ShopPage>{

// adicionar um shp cart de intancia 
void addShoeToCart(Shoe shoe){
  Provider.of<Cart>(context, listen: false).addItemtoCart(shoe);

// mensagem de inserdo ao acrrinho 
  showDialog(context: context, 
   builder: (context) =>AlertDialog(
    title: Text('Veja o carrinho '),
    content: Text('Inserido no carrinho com sucesso!'),
   ),
  );
}





  @override
  Widget build(BuildContext context){
    return Consumer<Cart>(builder: (context,valeu,child)=>  Column(children: [
// barra de pesquisa 
      Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color:Colors.grey[100],
        borderRadius:BorderRadius.circular(8),
      ),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text('pesquisar...'),//icon a se mudar de pois 
        Icon(Icons.search,
        color: Colors.black
        ,),
      ],
      ),
    ),

      //mensagem da agencia de  viagem 

    Padding(
      padding: const EdgeInsets.symmetric(vertical:25.0),
      child: Text('sejam bem-vindos, agencia de viagem esperamos que gostem dos pacotes.', // descrição para mudar 
      style:TextStyle(color: Colors.black),// mudar 
      ),
    ),
    
    Padding(padding:const EdgeInsets.symmetric(horizontal: 25.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [

        Text('Planos de Viagens ✈️',
        style:TextStyle( fontWeight: FontWeight.bold,color: Colors.black,//muda
        fontSize: 24,
        ),
        ),
        Text('confira mais',
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
        ),
      ],
      )
    ),

    const SizedBox(height: 10),

    // list dos protudos do shop 
    Expanded(child: ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index) {  
        
        // produtos a ser vistos na lista do shop 

       Shoe shoe = valeu.getShoeList() [index];
          //imagem do shop 
           return ShoeTile(
            shoe:shoe,
            onTap: () => addShoeToCart(shoe),
           );
          },
        ),
       ),
       const Padding(padding: EdgeInsets.only(top: 25.0, left: 25, right: 25,),
       child: Divider(
        color: Color.fromARGB(255, 0, 0, 0),
       ),
       ),
      ],
    ),
    );
  }
}



