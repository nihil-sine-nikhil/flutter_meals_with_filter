import 'package:flutter/material.dart';
import 'package:meals_with_filter/widgets/category_grid_item.dart';

import '../data/dummy_data.dart';
import '../models/category.dart' as c;
import 'meals.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, c.Category e) {
    var newArray = dummyMeals
        .where((element) => element.categories.contains(e.id))
        .toList();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (cxt) => MealsScreen(
                  title: e.title,
                  meals: newArray,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pick cate",
        ),
      ),
      body: GridView(
        padding: EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          ...availableCategories.map((e) => CategoryGridItem(
                category: e,
                onTap: () => _selectCategory(context, e),
              ))
        ],
      ),
    );
  }
}
