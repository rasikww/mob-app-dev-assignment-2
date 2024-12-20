import 'package:flutter/material.dart';
import '../toggle_button.dart';
import '../widgets/category_list.dart';
import 'food_grid_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    'Appetizers',
    'Main Course',
    'Desserts',
    'Drinks',
    'Soups & Salads',
    'Seafood'
  ];
  bool isDark = false;
  Color? bgLight = Colors.cyan[50];
  Color? bgDark = Colors.blueGrey[800];

  void toggleDark(bool value) {
    setState(() {
      isDark = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark ? Colors.blueGrey[600] : Colors.cyan[600],
          title: Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Text('Restaurant Menu', style: TextStyle(color: isDark ? Colors.white : Colors.black),),
                const Spacer(),
                ToggleButton(
                  value: isDark,
                  onChanged: toggleDark,
                )
              ]
            )
          )
      ),
      body: Column(
        children: [
          CategoryList(categories: categories),
          Expanded(
            child: FoodGridScreen(),
          ),
        ],
      ),
      backgroundColor: isDark ? bgDark : bgLight,
    );
  }
}


