import 'package:flutter/material.dart';

import '../models/meal.dart';

import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Container(
        child: Center(
          child: Text('You have no favorites yet - start adding some!'),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals.elementAt(index).id,
            title: favoriteMeals.elementAt(index).title,
            imageUrl: favoriteMeals.elementAt(index).imageUrl,
            duration: favoriteMeals.elementAt(index).duration,
            affordability: favoriteMeals.elementAt(index).affordability,
            complexity: favoriteMeals.elementAt(index).complexity,
            // removeItem: _removeMeal,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
