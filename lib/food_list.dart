import 'package:flutter/material.dart';

// Widgets
import 'food_card.dart';

class FoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.amberAccent,
        title: Text(
          'Vas Querer?',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 4,
            fontWeight: FontWeight.w300,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          FoodCard(
            name: 'Hamburguesa',
            price: 50,
            rating: 5,
            favorite: true,
            image: 'https://mrecipes.com/wp-content/uploads/2019/01/featured-smoked-hamburgers.jpg',
          ),
          FoodCard(
            name: 'Pizza',
            price: 45,
            rating: 2,
            favorite: false,
            image: 'https://www.scattidigusto.it/wp-content/uploads/2019/02/pizzeria-da-Michele-Napoli-Forcella-ricetta-margherita.jpg',
          ),
        ],
      ),
    );
  }
}
