import 'package:flutter/material.dart';

import 'package:meals_app/models/meal.dart';

class Meals extends StatelessWidget {
  Meals({super.key, required this.title, /*required this.mealList*/});

  final String title;
  //List<Meal> mealList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text('ASDFASDFASDFASDFASDFASDFASDASDADFADSFASDFASf', style: TextStyle(color: Colors.white),),
    );
  }
}

/*

ListView.builder(
        itemCount: mealList.length,  
        itemBuilder: (BuildContext context, int index){
         return mealList.map((e) => null)
      },),

*/