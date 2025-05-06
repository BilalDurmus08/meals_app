import 'package:flutter/material.dart';
import 'package:meals_app/screens/tabs.dart';
import 'package:meals_app/widgets/drawer_main.dart';
import 'package:meals_app/widgets/switch_list_tile_item.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() {
    return _FiltersState();
  }
}

class _FiltersState extends State<Filters> {
  bool _checkGlutenFree = false;
  bool _checkLactoseFree = false;
  bool _checkVegan = false;
  bool _checkVegetarian = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filters Screen')),
      drawer: DrawerMain(
        onSelectedScreen: (labelScreen) {
          if (labelScreen == 'filters') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Filters()),
            );
          } else if (labelScreen == 'meals') {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const TabsScreen()),
            );
          }
        },
      ),
      body: Column(
        children: [
          SwitchListTileItem(
            checkParameter: _checkGlutenFree,
            subText: 'Only include Gluten-Free meals',
            mainText: 'Gluten-Free',
            onToggle: (newValue) {
              setState(() {
                _checkGlutenFree = newValue;
              });
            },
          ),
          SwitchListTileItem(
            checkParameter: _checkLactoseFree,
            subText: 'Only include Lactose-Free meals',
            mainText: 'Lactose-Free',
            onToggle: (newValue) {
              setState(() {
                _checkLactoseFree = newValue;
              });
            },
          ),
          SwitchListTileItem(
            checkParameter: _checkVegan,
            subText: 'Only include Vegan meals',
            mainText: 'Vegan',
            onToggle: (newValue) {
              setState(() {
                _checkVegan = newValue;
              });
            },
          ),
          SwitchListTileItem(
            checkParameter: _checkVegetarian,
            subText: 'Only include Vegetarian meals',
            mainText: 'Vegetarian',
            onToggle: (newValue) {
              setState(() {
                _checkVegetarian = newValue;
              });
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print('Gluten-Free: $_checkGlutenFree');
              print('Lactose-Free: $_checkLactoseFree');
              print('Vegan: $_checkVegan');
              print('Vegetarian: $_checkVegetarian');
            },
            child: const Text('Print Selected Filters'),
          ),
        ],
      ),
    );
  }
}
