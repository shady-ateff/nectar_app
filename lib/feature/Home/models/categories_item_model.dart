import 'dart:ui';

class CategoriesItemModel {
  final String name;
  final String imageUrl;
  final Color bgColor;

  CategoriesItemModel({
    required this.name,
    required this.imageUrl,
    required this.bgColor,
  });
}

List<CategoriesItemModel> categoriesItems = [
  CategoriesItemModel(
    name: 'Frash Fruits & Vegetables',
    imageUrl: 'assets/images/fruits.png',
    bgColor: const Color(0xFFeef7f1),
  ),
  CategoriesItemModel(
    name: 'Cooking Oil',
    imageUrl: 'assets/images/cookingOil.png',
    bgColor: const Color(0xFFfef6ed),
  ),
  CategoriesItemModel(
    name: 'Dairy & Eggs',
    imageUrl: 'assets/images/dairy.png',
    bgColor: const Color(0xFFfde8e4),
  ),
  CategoriesItemModel(
    name: 'Meat & Fish',
    imageUrl: 'assets/images/meet&fish.png',
    bgColor: const Color(0xFFf4ebf7),
  ),
  CategoriesItemModel(
    name: 'Bakery & Snacks',
    imageUrl: 'assets/images/bakery.png',
    bgColor: const Color(0xFFfef8e5),
  ),
  CategoriesItemModel(
    name: 'Beverages',
    imageUrl: 'assets/images/berevages.png',
    bgColor: const Color(0xFFedf7fc),
  ),
  CategoriesItemModel(
    name: 'Grains & Pulses',
    imageUrl: 'assets/images/grains.png',
    bgColor: const Color(0xFFE3F2FD),
  ),
];
