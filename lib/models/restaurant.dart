import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_fooddeliveryapp/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burders
    Food(
      name: 'Classic Cheeseburger',
      description:
          "A juicy beef patty grilled or fried to perfection, nestled between two soft, toasted hamburger buns.",
      imagePath: 'lib/images/burger/bur4.jpg',
      price: 0.99,
      category: FoodCategories.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: 'BBQ Bacon Burger',
      description:
          "A savory beef patty grilled to perfection, topped with crispy bacon, melted cheddar cheese, and tangy BBQ sauce, all sandwiched between two toasted hamburger buns.",
      imagePath: 'lib/images/burger/bur4.jpg',
      price: 1.49,
      category: FoodCategories.burgers,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 1.99),
        Addon(name: "Onion Rings", price: 1.49),
        Addon(name: "Jalapeños", price: 0.99),
      ],
    ),
    Food(
      name: 'Mushroom Swiss Burger',
      description:
          "A beef patty cooked to perfection, topped with sautéed mushrooms, melted Swiss cheese, and savory sauce, served on a toasted hamburger bun.",
      imagePath: 'lib/images/burger/bur4.jpg',
      price: 1.79,
      category: FoodCategories.burgers,
      availableAddons: [
        Addon(name: "Caramelized Onions", price: 0.99),
        Addon(name: "Truffle Aioli", price: 1.49),
        Addon(name: "Garlic Butter", price: 0.99),
      ],
    ),

    Food(
      name: 'Spicy Jalapeño Burger',
      description:
          "A zesty beef patty topped with melted pepper jack cheese, jalapeño peppers, and a spicy chipotle mayo, served on a toasted bun.",
      imagePath: 'lib/images/burger/bur4.jpg',
      price: 1.99,
      category: FoodCategories.burgers,
      availableAddons: [
        Addon(name: "Extra Jalapeños", price: 0.99),
        Addon(name: "Pepper Jack Cheese", price: 0.99),
        Addon(name: "Sriracha Sauce", price: 0.99),
      ],
    ),

    Food(
      name: 'Veggie Burger',
      description:
          "A savory veggie patty made with a blend of vegetables, grains, and spices, topped with fresh lettuce, tomato, and a tangy sauce, served on a toasted whole-grain bun.",
      imagePath: 'lib/images/burger/bur4.jpg',
      price: 1.59,
      category: FoodCategories.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 2.99),
        Addon(name: "Hummus", price: 1.49),
        Addon(name: "Vegan Cheese", price: 1.49),
      ],
    ),

    //salad
    Food(
      name: 'Caesar Salad',
      description:
          "Crisp romaine lettuce tossed with Caesar dressing, topped with croutons and Parmesan cheese.",
      imagePath: 'lib/images/salad/sal3.jpg',
      price: 1.99,
      category: FoodCategories.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.99),
        Addon(name: "Anchovies", price: 0.99),
        Addon(name: "Extra Parmesan", price: 0.49),
      ],
    ),

    Food(
      name: 'Greek Salad',
      description:
          "A refreshing mix of cucumbers, tomatoes, red onions, bell peppers, olives, and feta cheese, dressed with olive oil and oregano.",
      imagePath: 'lib/images/salad/sal3.jpg',
      price: 2.49,
      category: FoodCategories.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.99),
        Addon(name: "Pita Bread", price: 1.49),
        Addon(name: "Feta Cheese", price: 0.99),
      ],
    ),
    Food(
      name: 'Caprese Salad',
      description:
          "Fresh mozzarella and ripe tomatoes layered with basil leaves and drizzled with balsamic glaze and olive oil.",
      imagePath: 'lib/images/salad/sal3.jpg',
      price: 2.79,
      category: FoodCategories.salads,
      availableAddons: [
        Addon(name: "Extra Basil", price: 0.49),
        Addon(name: "Extra Mozzarella", price: 1.49),
        Addon(name: "Pesto Sauce", price: 0.99),
      ],
    ),

    Food(
      name: 'Cobb Salad',
      description:
          "A hearty salad featuring grilled chicken, crispy bacon, hard-boiled eggs, tomatoes, avocado, and blue cheese on a bed of mixed greens, served with your choice of dressing.",
      imagePath: 'lib/images/salad/sal3.jpg',
      price: 2.99,
      category: FoodCategories.salads,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 1.99),
        Addon(name: "Grilled Chicken", price: 2.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    Food(
      name: 'Asian Sesame Salad',
      description:
          "Crunchy mixed greens with shredded carrots, purple cabbage, and bell peppers, topped with sesame seeds and a sesame vinaigrette.",
      imagePath: 'lib/images/salad/sal3.jpg',
      price: 2.49,
      category: FoodCategories.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.99),
        Addon(name: "Toasted Almonds", price: 1.49),
        Addon(name: "Crunchy Noodles", price: 0.99),
      ],
    ),

    //sides
    Food(
      name: 'French Fries',
      description:
          "Crispy and golden fries made from fresh potatoes, seasoned with a touch of salt. Perfect as a classic side for any meal.",
      imagePath: 'lib/images/sides/side4.jpg',
      price: 0.99,
      category: FoodCategories.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.49),
        Addon(name: "Bacon Bits", price: 0.79),
        Addon(name: "Garlic Aioli", price: 0.59),
      ],
    ),
    Food(
      name: 'Onion Rings',
      description:
          "Crispy, golden onion rings with a light, crunchy batter. A tasty and satisfying side dish for any meal.",
      imagePath: 'lib/images/sides/side4.jpg',
      price: 1.29,
      category: FoodCategories.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 0.49),
        Addon(name: "BBQ Sauce", price: 0.49),
        Addon(name: "Buffalo Sauce", price: 0.59),
      ],
    ),
    Food(
      name: 'Sweet Potato Fries',
      description:
          "Sweet and savory fries made from fresh sweet potatoes, seasoned and fried to crispy perfection. A delicious alternative to regular fries.",
      imagePath: 'lib/images/sides/side4.jpg',
      price: 1.39,
      category: FoodCategories.sides,
      availableAddons: [
        Addon(name: "Cinnamon Sugar", price: 0.59),
        Addon(name: "Spicy Aioli", price: 0.59),
        Addon(name: "Honey Mustard", price: 0.49),
      ],
    ),

    Food(
      name: 'Sweet Potato Fries',
      description:
          "Sweet and savory fries made from fresh sweet potatoes, seasoned and fried to crispy perfection. A delicious alternative to regular fries.",
      imagePath: 'lib/images/sides/side4.jpg',
      price: 1.39,
      category: FoodCategories.sides,
      availableAddons: [
        Addon(name: "Cinnamon Sugar", price: 0.59),
        Addon(name: "Spicy Aioli", price: 0.59),
        Addon(name: "Honey Mustard", price: 0.49),
      ],
    ),

    Food(
      name: 'Coleslaw',
      description:
          "A refreshing side dish made with shredded cabbage and carrots, mixed with a creamy and tangy dressing. Perfect for balancing out a hearty meal.",
      imagePath: 'lib/images/sides/side4.jpg',
      price: 0.79,
      category: FoodCategories.sides,
      availableAddons: [
        Addon(name: "Extra Dressing", price: 0.39),
        Addon(name: "Apple Chunks", price: 0.49),
        Addon(name: "Raisins", price: 0.49),
      ],
    ),

    //desserts
    Food(
      name: 'Chocolate Cake',
      description:
          "A rich and moist chocolate cake topped with smooth, creamy chocolate frosting. An indulgent dessert that satisfies any sweet tooth.",
      imagePath: 'lib/images/dessert/des1.jpg',
      price: 2.99,
      category: FoodCategories.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Whipped Cream", price: 0.99),
        Addon(name: "Chocolate Syrup", price: 0.49),
      ],
    ),
    Food(
      name: 'Cheesecake',
      description:
          "A creamy and smooth cheesecake with a buttery graham cracker crust. A classic and decadent dessert with a hint of vanilla.",
      imagePath: 'lib/images/dessert/des1.jpg',
      price: 3.49,
      category: FoodCategories.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 0.99),
        Addon(name: "Whipped Cream", price: 0.99),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description:
          "A classic dessert made with sweet, spiced apple filling and a flaky, golden crust. Served warm for the ultimate comfort dessert.",
      imagePath: 'lib/images/dessert/des1.jpg',
      price: 2.49,
      category: FoodCategories.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Caramel Sauce", price: 0.79),
        Addon(name: "Cinnamon Sugar", price: 0.59),
      ],
    ),
    Food(
      name: 'Tiramisu',
      description:
          "An elegant Italian dessert featuring layers of coffee-soaked ladyfingers and mascarpone cheese. Dusted with cocoa powder for a sophisticated finish.",
      imagePath: 'lib/images/dessert/des1.jpg',
      price: 3.99,
      category: FoodCategories.desserts,
      availableAddons: [
        Addon(name: "Espresso Shot", price: 1.49),
        Addon(name: "Cocoa Powder", price: 0.49),
        Addon(name: "Whipped Cream", price: 0.99),
      ],
    ),
    Food(
      name: 'Ice Cream Sundae',
      description:
          "A delightful dessert with scoops of ice cream topped with whipped cream, nuts, and a cherry. Customize with your favorite sauces and toppings.",
      imagePath: 'lib/images/dessert/des1.jpg',
      price: 1.99,
      category: FoodCategories.desserts,
      availableAddons: [
        Addon(name: "Chocolate Syrup", price: 0.49),
        Addon(name: "Caramel Sauce", price: 0.49),
        Addon(name: "Chopped Nuts", price: 0.59),
      ],
    ),

    //drinks
    Food(
      name: 'Iced Coffee',
      description:
          "A refreshing cold coffee beverage made with freshly brewed coffee, ice, and a splash of milk or cream.",
      imagePath: 'lib/images/drink/drink5.jpg',
      price: 2.49,
      category: FoodCategories.drinks,
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 1.49),
        Addon(name: "Whipped Cream", price: 0.99),
        Addon(name: "Flavored Syrup", price: 0.79),
      ],
    ),

    Food(
      name: 'Mango Smoothie',
      description:
          "A smooth and creamy blend of ripe mangoes, yogurt, and a hint of honey, perfect for a refreshing and healthy treat.",
      imagePath: 'lib/images/drink/drink5.jpg',
      price: 3.49,
      category: FoodCategories.drinks,
      availableAddons: [
        Addon(name: "Chia Seeds", price: 0.79),
        Addon(name: "Protein Powder", price: 1.49),
        Addon(name: "Coconut Milk", price: 0.99),
      ],
    ),

    Food(
      name: 'Lemonade',
      description:
          "A classic, thirst-quenching drink made with freshly squeezed lemons, water, and sugar, served over ice.",
      imagePath: 'lib/images/drink/drink5.jpg',
      price: 1.99,
      category: FoodCategories.drinks,
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.49),
        Addon(name: "Strawberry Puree", price: 0.79),
        Addon(name: "Cucumber Slices", price: 0.59),
      ],
    ),

    Food(
      name: 'Chai Latte',
      description:
          "A warm and comforting drink made with spiced tea, steamed milk, and a touch of sweetener, topped with foam.",
      imagePath: 'lib/images/drink/drink5.jpg',
      price: 2.99,
      category: FoodCategories.drinks,
      availableAddons: [
        Addon(name: "Extra Cinnamon", price: 0.49),
        Addon(name: "Honey", price: 0.69),
        Addon(name: "Whipped Cream", price: 0.99),
      ],
    ),

    Food(
      name: 'Berry Blast Smoothie',
      description:
          "A vibrant and flavorful smoothie made with a mix of berries, yogurt, and a splash of juice, blended until smooth.",
      imagePath: 'lib/images/drink/drink5.jpg',
      price: 3.99,
      category: FoodCategories.drinks,
      availableAddons: [
        Addon(name: "Flax Seeds", price: 0.79),
        Addon(name: "Spinach", price: 0.99),
        Addon(name: "Greek Yogurt", price: 1.49),
      ],
    ),
  ];
  //getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  //operations
  //user cart
  final List<CartItem> _cart = [];

  //add cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // ignore: unused_local_variable
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      //check
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //helpers
  //generate a rec
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here`s your receipt");
    receipt.writeln();
    //format the fate to include up to seconds onle
    String formattedDate =
        DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("     Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }
}
