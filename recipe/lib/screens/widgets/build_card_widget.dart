import 'package:flutter/material.dart';

import '../../models/recipes.dart';
Card buildCardWidget(Recipes recipe) {
  return Card(
      elevation: 2.0,
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(recipe.imageURL),
            const SizedBox(
              height: 10,
            ),
            Text(recipe.label)
          ],
        ),
      ));
}