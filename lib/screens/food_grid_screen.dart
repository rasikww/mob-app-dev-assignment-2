import 'package:flutter/material.dart';
import '../widgets/food_item_card.dart';

class FoodGridScreen extends StatelessWidget {
  //bool isDark = true;
  FoodGridScreen({super.key});
  final List<Map<String, dynamic>> foodItems = [
    {'image': 'assets/images/pizza.jpg', 'name': 'Pizza', 'price': 1649.99, 'rating': 4.5},
    {'image': 'assets/images/burger.jpg', 'name': 'Burger', 'price': 749.99, 'rating': 4.0},
    {'image': 'assets/images/pasta.jpg', 'name': 'Pasta', 'price': 1899.99, 'rating': 4.3},
    {'image': 'assets/images/ice_cream.jpg', 'name': 'Ice Cream', 'price': 299.99, 'rating': 4.7},
  ];

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculate number of columns dynamically
    int crossAxisCount = orientation == Orientation.portrait
        ? (screenWidth ~/ 150).clamp(2, 4) // For portrait: 2-4 items per row
        : (screenWidth ~/ 200).clamp(3, 6); // For landscape: 3-6 items per row
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: foodItems.length,
      itemBuilder: (context, index) {
        return FoodItemCard(foodItem: foodItems[index]);
      },
    );
  }
}


