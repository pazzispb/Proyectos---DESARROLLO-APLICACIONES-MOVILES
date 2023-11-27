import 'package:flutter/material.dart';
import 'package:social_food/food_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  final String category = "Editor's Choice";
  final String title = "The art of Dough";
  final String description = "Learn how to make the perfect bread";
  final String author = 'Jorge Perez';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(height: 450, width: 350),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag1.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Stack(
          children: [
            Positioned(
              child: Text(category, style: FoodTheme.darkTextTheme.bodyLarge),
            ),
            Positioned(
              top: 20,
              child: Text(title, style: FoodTheme.darkTextTheme.displayLarge),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child:
                  Text(description, style: FoodTheme.darkTextTheme.bodyLarge),
            ),
            Positioned(
              bottom: 15,
              right: 0,
              child: Text(author, style: FoodTheme.darkTextTheme.bodyLarge),
            )
          ],
        ),
      ),
    );
  }
}
