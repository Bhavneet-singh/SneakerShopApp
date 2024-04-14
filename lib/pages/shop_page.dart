import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sneakershopapp/components/shoe_tile.dart';
import 'package:sneakershopapp/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[100],
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(fontSize: 16),
              ),
              Icon(Icons.search),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'everyone flies.. some fly longer than others',
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (constext, index) {
                  return ShoeTile(
                      shoe: Shoe(
                          name: 'Nike Sneaker',
                          price: '9999',
                          imagePath: 'images/pic1.jpg',
                          description: 'Flat sneaker with modern looks '));
                })),

        //hot picks
      ],
    );
  }
}
