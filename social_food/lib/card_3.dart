import 'package:flutter/material.dart';

import 'food_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(height: 450, width: 350),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.60),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Recipe Trends',
                    style: FoodTheme.darkTextTheme.displayLarge,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 12,
                      runSpacing: 12, //como un interlineado
                      children: [
                        Chip(
                          label: Text('Onion',
                              style: FoodTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.70),
                          onDeleted: () {

                          },
                        ),
                        Chip(
                          label: Text('Onion',
                              style: FoodTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.70),
                          onDeleted: () {

                          },
                        ),
                        Chip(
                          label: Text('Onion',
                              style: FoodTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.70),
                          onDeleted: () {

                          },
                        ),
                        Chip(
                          label: Text('Onion',
                              style: FoodTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.70),
                          onDeleted: () {

                          },
                        ),

                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
