import 'package:flutter/material.dart';
import 'package:meals_with_filter/data/dummy_data.dart';
import 'package:meals_with_filter/screens/meals.dart';

import '../models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (cxt) => MealsScreen(
                      title: 'some caetrgoiry',
                      meals: dummyMeals,
                    )));
      },
      borderRadius: BorderRadius.circular(10),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(
                0.55,
              ),
              category.color.withOpacity(
                0.9,
              )
            ],
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ),
    );
  }
}
