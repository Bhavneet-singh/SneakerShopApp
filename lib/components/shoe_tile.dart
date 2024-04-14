import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneakershopapp/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;

  ShoeTile({
    Key? key,
    required this.shoe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(left: 25),
        width: 280,
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                shoe.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            //description
            Text(
              shoe.description,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
            ),

            //price + detail
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoe.name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$' + shoe.price,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),

            //button to add cart
          ],
        ),
      ),
    );
  }
}
