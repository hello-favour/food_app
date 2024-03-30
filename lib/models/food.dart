class Food {
  final String name;
  final String description;
  final String imagePath;
  final double prince;
  List<Addon> availableAddons;
  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.prince,
    required this.availableAddons,
  });
}

// food category
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks;
}

//food addons
class Addon {
  String name;
  String price;
  Addon({
    required this.name,
    required this.price,
  });
}
