import 'package:flutter/material.dart';
import 'package:meals_app/screens/tabs.dart';
import 'package:meals_app/widgets/drawer_main.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() {
    return _FiltersState();
  }
}

class _FiltersState extends State<Filters> {
  bool onchecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters Screen')),
      drawer: DrawerMain(
        onSelectedScreen: (labelScreen) {
          if (labelScreen == 'filters') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Filters()),
            );
          } else if (labelScreen == 'meals') {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => TabsScreen()),
            );
          }
        },
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: onchecked,
            onChanged: (didCheckedInput) {
              setState(() {
                onchecked = didCheckedInput;
              });
            },
            contentPadding: EdgeInsets.only(left: 35, right: 35),
            title: Text(
              'Gluten Free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            subtitle: Text(
              'Only include Gluten-Free meals',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
          ),
        ],
      ),
    );
  }
}
