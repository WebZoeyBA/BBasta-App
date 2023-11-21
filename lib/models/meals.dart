class Meal {
  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.description,
    required this.price,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String description;
  final double price;
}
