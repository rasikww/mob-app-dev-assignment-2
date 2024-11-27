import 'package:flutter/material.dart';
import '../screens/food_detail_screen.dart';

class FoodItemCard extends StatelessWidget {
  //bool isDark = true;
  final Map<String, dynamic> foodItem;

  const FoodItemCard({super.key, required this.foodItem});

  /// Builds a [Card] widget that displays information about a food item.
  ///
  /// The card displays the image of the food item, its name, price, and rating.
  /// When the card is tapped, it navigates to the [FoodDetailScreen] with the
  /// food item's information.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodDetailScreen(foodItem: foodItem),
          ),
        );
      },
      child: Card(
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              foodItem['image'],
              height: 120,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodItem['name'],
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('Rs.${foodItem['price']}'),
                  Text('Rating: ${foodItem['rating']} ★'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
