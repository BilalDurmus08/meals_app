import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/meals.dart';
import 'dart:developer';

import 'package:meals_app/widgets/drawer_main.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Meal> favMeal = [];

  void _onSelectedScreen(String labelScreen) {
    if (labelScreen == 'filters') {
    } else if (labelScreen == 'meals') {
      Navigator.pop(context);
    }
  }

  void _favoriteToggle(Meal meal) {
    log('Toggling favorite for meal: ${meal.title}');
    bool isInclude = favMeal.contains(meal);
    if (isInclude) {
      setState(() {
        favMeal.remove(meal);
      });
      _showInfoMessage('No longer in your favorite');
    } else {
      setState(() {
        favMeal.add(meal);
      });
      _showInfoMessage('Now in your favorites');
    }
  }

  int _selectedPage = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen(favoriteToggle: _favoriteToggle);
    String activePageTitle = 'Categories';

    if (_selectedPage == 1) {
      activePage = Meals(meals: favMeal, favoriteToggle: _favoriteToggle);
      activePageTitle = 'Favorites';
    }

    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      drawer: DrawerMain(onSelectedScreen: _onSelectedScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: _selectPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal_rounded),
            label: 'Categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}
