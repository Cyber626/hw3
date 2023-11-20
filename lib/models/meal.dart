class Meal {
  const Meal({
    required this.id,
    required this.title,
    required this.ingredients,
    required this.steps,
  });

  final String id;
  final String title;
  final List<String> ingredients;
  final List<String> steps;
}
