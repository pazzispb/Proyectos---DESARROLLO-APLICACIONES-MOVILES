import 'package:flutter/material.dart';
import 'package:social_food/food_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(5),
        constraints: const BoxConstraints.expand(height: 450, width: 350),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            const AuthorCard(),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 30,
                    left: 0,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FoodTheme.lightTextTheme.displayLarge,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 0,
                    child: Text(
                      'Recipe',
                      style: FoodTheme.lightTextTheme.displayLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthorCard extends StatefulWidget {
  const AuthorCard({super.key});

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool isLiked = false;

  void _toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });

    var snackBar = SnackBar(
      content: Text(isLiked ? 'You like this card' : "You don't like this card"),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      )
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleImage(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mike Katz', style: FoodTheme.lightTextTheme.titleLarge),
                  const Text(
                    'Smoothie Connoisseur',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ],
          ),
          IconButton(
              onPressed: _toggleLike,
              icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border_outlined),
              color: isLiked ? Colors.red : null)
        ],
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  const CircleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 5.0, color: Colors.white)),
        child: const CircleAvatar(
            backgroundImage: AssetImage('assets/author_katz.jpeg')),
      ),
    );
  }
}
