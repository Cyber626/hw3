import 'package:flutter/material.dart';
import 'package:hw3/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key, required this.currentMeal});

  final Meal currentMeal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentMeal.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Required ingredients',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            for (final i in currentMeal.ingredients) Text(i),
            const SizedBox(height: 16),
            Text(
              'Steps:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            for (final i in currentMeal.steps) Text(i),
          ],
        ),
      ),
    );
  }
}
