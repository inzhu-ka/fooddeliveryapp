import 'package:flutter/material.dart';
import 'package:flutter_application_fooddeliveryapp/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({
    super.key,
    required this.tabController,
  });
  List<Tab> _buildCategories() {
    return FoodCategories.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategories(),
      ),
    );
  }
}
