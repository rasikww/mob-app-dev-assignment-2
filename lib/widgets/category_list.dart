import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories;

  const CategoryList({super.key, required this.categories});


  /// This widget displays a horizontal list of categories as chips.
  ///
  /// The [categories] parameter is a list of strings, where each string is a
  /// category name.
  ///
  /// The widget is designed to be used in a [Scaffold] body, and is typically
  /// placed above a [FoodGridScreen].
  ///
  /// The widget is a [StatelessWidget], meaning that it does not maintain any
  /// state between builds.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Chip(
              label: Text(categories[index]),
              backgroundColor: Colors.orange.shade100,
            ),
          );
        },
      ),
    );
  }
}
