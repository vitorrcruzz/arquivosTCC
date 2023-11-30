import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
  
  Shoe(
  name:'plano de viagem japão  ',
  price:'3.000,00', 
   imagePath:'img/japao1.png', 
  description:'Pacote de 5 dias no Rio: descubra a cidade com \n passeios aos pontos turísticos icônicos, \n desfrute das famosas praias de Copacabana e Ipanema,\n e faça uma excursão a Búzios para relaxar em \nsuas praias paradisíacas. Inclui hospedagem, \n traslados e tours guiados.' 
    ),
  
  Shoe(
  name:'plano 3 ',
  price:'3.000,00',
  imagePath:'img/singapura.png',
  description:'Pacote de 5 dias no Rio: descubra a cidade com \n passeios aos pontos turísticos icônicos, \n desfrute das famosas praias de Copacabana e Ipanema,\n e faça uma excursão a Búzios para relaxar em \nsuas praias paradisíacas. Inclui hospedagem, \n traslados e tours guiados.' 
    ),

  Shoe(
  name:'plano 4 ',
  price:'3.000,00',
   imagePath:'img/irlanda1.png',
  description:'Pacote de 5 dias no Rio: descubra a cidade com \n passeios aos pontos turísticos icônicos, \n desfrute das famosas praias de Copacabana e Ipanema,\n e faça uma excursão a Búzios para relaxar em \nsuas praias paradisíacas. Inclui hospedagem, \n traslados e tours guiados.' 
    ),
  Shoe(
  name:'plano 5 ',
  price:'3.000,00',
  imagePath:'img/1.png',
  description:'Pacote de 5 dias no Rio: descubra a cidade com \n passeios aos pontos turísticos icônicos, \n desfrute das famosas praias de Copacabana e Ipanema,\n e faça uma excursão a Búzios para relaxar em \nsuas praias paradisíacas. Inclui hospedagem, \n traslados e tours guiados.' 

    ),
    
  ];
  // lista de intem 
  List<Shoe> userCart =[];


  // get lista 
  List<Shoe>getShoeList() {
    return shoeShop;
  }
  // get cart 

    List<Shoe>getUserCart() {
    return userCart;
  }
  // add get cart na loja 
  void addItemtoCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remover item do carrinho 
  void removeItemfromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}