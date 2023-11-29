import 'package:flutter/material.dart';

import '../models/recipes.dart';

class RecipeDetailsScreen extends StatefulWidget {
  const RecipeDetailsScreen({super.key, required this.recipe});

  final Recipes recipe;

  @override
  State<RecipeDetailsScreen> createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  int _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(widget.recipe.imageURL),
            const SizedBox(
              height: 10,
            ),
            Text(widget.recipe.label),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (context, index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                      '${ingredient.quantity * _sliderValue} ${ingredient.measure} ${ingredient.name}');
                },
              ),
            ),
            Slider(
              label: "${_sliderValue * widget.recipe.servings} servings",
                min: 1,
                max: 10,
                activeColor: Colors.green,
                inactiveColor: Colors.black,
                divisions: 9,
                value: _sliderValue.toDouble(),
                onChanged: (newValue) {
                  setState(() {
                    _sliderValue = newValue.toInt();
                  });
                })
          ],
        ),
      ),
    );
  }
}
