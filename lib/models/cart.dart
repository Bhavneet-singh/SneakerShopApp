import 'package:sneakershopapp/models/shoe.dart';

class Cart {
  //lisy of shoes for sale 
  List<Shoe> shoeShop =[
    Shoe(name: 'Nike Sneaker', price: '9999', imagePath: 'images/pic1.jpg', description: 'Flat Sneaker with modern looks'),
    Shoe(name: "Nike Rugged", price: '15999', imagePath: 'images/pic2.jpg', description: 'Rugged Sports shoes'),
    Shoe(name: 'Nike Air', price: '29999', imagePath: 'images/pic3.jpg', description: 'Air Jodern'),
    Shoe(name: 'Nike Sports', price: '12999', imagePath: 'images/pic4.jpg', description: 'Nike sports shoes')
  ];

  //list of items in user cart 
  List<Shoe> userCart =  [];
  

}