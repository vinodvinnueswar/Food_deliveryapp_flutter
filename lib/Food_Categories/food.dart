//Items
class Food{
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon>avaiableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.avaiableAddons,
  });
}
  //Food category
  enum FoodCategory{
    Tiffins ,
    Lunch,
    Dinner,
    Salads,
    Drinks,

  }

  //food Addons
  class Addon{
    String name;
    double price;

    Addon({
      required this.name,
      required this.price,
    });

  }
