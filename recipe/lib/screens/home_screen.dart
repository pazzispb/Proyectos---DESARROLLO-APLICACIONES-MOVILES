import 'package:flutter/material.dart';
import 'package:recipe/models/recipes.dart';
import 'package:recipe/screens/recipe_details_screen.dart';

import 'widgets/build_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          //scroll infinito
          itemCount: Recipes.samples.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return RecipeDetailsScreen(recipe: Recipes.samples[index],);
                  }));
                },
                child: buildCardWidget(Recipes.samples[index]));
          },
        ),
      ),
    );
  }
}
