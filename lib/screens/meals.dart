import 'package:flutter/material.dart';
import 'package:meals_app/main.dart';
import 'package:meals_app/models/meal.dart';

class Meals extends StatelessWidget {
  final String title;
  final List<Meal> meals;

  const Meals({required this.meals, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    Widget body_part = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) {
        return Text(
          meals[index].title,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(color: Colors.cyanAccent),
        );
      },
    );

    if (meals.isEmpty) {
      body_part = Center(
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

    return Scaffold(appBar: AppBar(title: Text(title)), body: body_part);
  }
}
