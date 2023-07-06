import 'package:flutter/material.dart';
import 'package:meals_with_filter/widgets/meal_item.dart';

import '../models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    required this.title,
    required this.meals,
  });
  final String title;
  final List<Meal> meals;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: meals.isNotEmpty
          ? ListView.builder(
              itemBuilder: (ctx, index) => MealItem(meal: meals[index]),
              itemCount: meals.length)
          : const Center(
              child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("U h oh nooo"),
              ],
            )),
    );
  }
}
