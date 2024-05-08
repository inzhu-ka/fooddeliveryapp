import 'package:flutter/material.dart';
import 'package:flutter_application_fooddeliveryapp/components/my_current_location.dart';
import 'package:flutter_application_fooddeliveryapp/components/my_desctiption_box.dart';
import 'package:flutter_application_fooddeliveryapp/components/my_drawer.dart';
import 'package:flutter_application_fooddeliveryapp/components/my_food_tile.dart';
import 'package:flutter_application_fooddeliveryapp/components/my_sliver_app_bar.dart';
import 'package:flutter_application_fooddeliveryapp/components/my_tab_bar.dart';
import 'package:flutter_application_fooddeliveryapp/models/food.dart';
import 'package:flutter_application_fooddeliveryapp/models/restaurant.dart';
import 'package:flutter_application_fooddeliveryapp/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategories.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //sort
  List<Food> _filterMenuByCategory(
      FoodCategories category, List<Food> fulMenu) {
    return fulMenu.where((food) => food.category == category).toList();
  }

  //return
  List<Widget> getFoodInThisCategory(List<Food> fulMenu) {
    return FoodCategories.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fulMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return FoodTile(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDarwer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(
              tabController: _tabController,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                //my current location
                const MyCurrentLocation(),

                //description box
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
