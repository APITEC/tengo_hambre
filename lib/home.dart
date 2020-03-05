import 'package:flutter/material.dart';

// Routes
import 'food_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: IconButton(
          splashColor: Colors.amberAccent,
          iconSize: 80,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FoodList()));
          },
          icon: Icon(
            Icons.fastfood,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
