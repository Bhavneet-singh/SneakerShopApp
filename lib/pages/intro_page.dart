import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneakershopapp/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60.0,
              ),
              //logo
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  'images/logo.png',
                  height: 120,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              //title
              Text(
                'Just Do It ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              //sub title
              const Text(
                  'Brand new sneakers and customers kicks made with premium quality',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 100,
              ),
              //start now button
              GestureDetector(
                onTap: () {
                  print('i am clicked ');
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage(),));
                }, 
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
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
