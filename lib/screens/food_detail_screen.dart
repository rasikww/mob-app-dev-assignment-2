import 'package:flutter/material.dart';

class FoodDetailScreen extends StatelessWidget {
  //bool isDark = false;
  final Map<String, dynamic> foodItem;

  const FoodDetailScreen({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor: isDark ? Colors.blueGrey[600] : Colors.cyan[50],
        title: Text(foodItem['name']),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            foodItem['image'],
            height: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodItem['name'],
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Rs.${foodItem['price']}',
                  style: const TextStyle(fontSize: 20, color: Colors.green),
                ),
                const SizedBox(height: 8),
                Text(
                  'Rating: ${foodItem['rating']} ★',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
                Text(
                  'This is a delicious ${foodItem['name']} made with high-quality ingredients.',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Order Now'),
                ),
              ],
            ),
          ),
        ],
      ),
      //backgroundColor: isDark ? Colors.blueGrey[800] : Colors.cyan[50],
    );
  }
}
