import 'package:flutter/material.dart';

class DrawerMain extends StatelessWidget {
  const DrawerMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.onTertiaryContainer,
                  Theme.of(context).colorScheme.secondaryContainer,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(
                    Icons.fastfood,
                    size: 45,
                    color: Theme.of(context).colorScheme.surfaceContainer,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Cooking up!',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.no_meals_rounded, size: 35),
            title: Text(
              'Meals',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 35),
            title: Text(
              'Filters',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
