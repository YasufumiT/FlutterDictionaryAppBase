import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: const TabBar(
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        indicatorColor: Colors.transparent,
        tabs: [
          Tab(text: "Page1", icon: Icon(Icons.home)),
          Tab(text: "Page2", icon: Icon(Icons.person)),
          Tab(text: "Page3", icon: Icon(Icons.shopping_cart)),
        ],
      ),
    );
  }
}
