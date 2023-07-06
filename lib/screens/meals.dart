import 'package:flutter/material.dart';

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
              itemBuilder: (ctx, index) => Text(
                    meals[index].title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white),
                  ),
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
