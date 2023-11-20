import 'package:flutter/material.dart';
import 'package:hw3/data/meals.dart';
import 'package:hw3/screens/meal_detail.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final i in meals)
            ListTile(
              title: Text(i.title),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctn) => MealDetailScreen(currentMeal: i),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
