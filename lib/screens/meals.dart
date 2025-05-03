import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class Meals extends StatelessWidget {
  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) favoriteToggle;

  const Meals({
    required this.meals,
    this.title,
    super.key,
    required this.favoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    Widget bodyPart = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) {
        return MealItem(meal: meals[index], favoriteToggle: favoriteToggle);
      },
    );

    if (meals.isEmpty) {
      bodyPart = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Wuppsi Nothing here',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Now go back where you came from.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      );
    }
    if (title == null) {
      return bodyPart;
    }

    return Scaffold(appBar: AppBar(title: Text(title!)), body: bodyPart);
  }
}
