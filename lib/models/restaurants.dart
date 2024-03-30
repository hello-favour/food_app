import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menus
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Savory Bacon Bliss Burger",
      description:
          "Indulge in the smoky perfection of our Savory Bacon Bliss Burger. Succulent beef patty, crispy bacon strips, tangy pickles, and fresh lettuce, all embraced by soft, toasted sesame seed buns.",
      imagePath: "images/burgers/burger1.png",
      price: 1.49,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Caramelized Onions", price: 1.49),
        Addon(name: "Jalapeno Relish", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Cheese Lover's Dream Burger",
      description:
          "Embark on a journey of cheese ecstasy with our Cheese Lover's Dream Burger. Juicy beef patty smothered in melted cheddar, topped with creamy gouda sauce, and served with crisp lettuce and vine-ripened tomatoes.",
      imagePath: "images/burgers/burger2.png",
      price: 2.99,
      availableAddons: [
        Addon(name: "Extra cheddar", price: 1.49),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Truffle Aioli", price: 2.49),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Veggie Fiesta Burger",
      description:
          "Experience a burst of flavor with our Veggie Fiesta Burger. A hearty black bean and quinoa patty, layered with roasted bell peppers, avocado slices, and zesty salsa, all nestled in a warm, whole grain bun.",
      imagePath: "images/burgers/burger3.png",
      price: 3.49,
      availableAddons: [
        Addon(name: "Guacamole", price: 1.99),
        Addon(name: "Grilled Pineapple", price: 1.49),
        Addon(name: "Chipotle Mayo", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Mushroom Madness Burger",
      description:
          "Delight in the earthy goodness of our Mushroom Madness Burger. Juicy beef patty crowned with sautéed mushrooms, Swiss cheese, and a drizzle of balsamic glaze, all embraced by a toasted whole wheat bun.",
      imagePath: "images/burgers/burger4.png",
      price: 2.79,
      availableAddons: [
        Addon(name: "Extra mushrooms", price: 1.29),
        Addon(name: "Truffle Mayo", price: 2.49),
        Addon(name: "Crispy Onions", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Spicy Southwest Burger",
      description:
          "Ignite your taste buds with our Spicy Southwest Burger. A fiery blend of jalapeno-infused beef patty, pepper jack cheese, roasted poblano peppers, and spicy chipotle aioli, served on a toasted jalapeno cheddar bun.",
      imagePath: "images/burgers/burger2.png",
      price: 3.99,
      availableAddons: [
        Addon(name: "Sriracha Mayo", price: 1.49),
        Addon(name: "Crispy Jalapenos", price: 1.99),
        Addon(name: "Guajillo Salsa", price: 2.49),
      ],
      category: FoodCategory.burgers,
    ),

    //salads
    Food(
      name: "Mediterranean Quinoa Salad",
      description:
          "Transport your taste buds to the shores of the Mediterranean with our vibrant Quinoa Salad. Nutty quinoa, crisp cucumbers, juicy tomatoes, and tangy feta cheese, tossed in a refreshing lemon-herb vinaigrette.",
      imagePath: "images/salads/salad1.png",
      price: 6.99,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Avocado", price: 1.99),
        Addon(name: "Kalamata Olives", price: 1.49),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Indulge in the timeless classic of our Caesar Salad. Crisp romaine lettuce, garlicky croutons, and grated Parmesan cheese, all tossed in creamy Caesar dressing.",
      imagePath: "images/salads/salad2.png",
      price: 5.99,
      availableAddons: [
        Addon(name: "Grilled Shrimp", price: 4.99),
        Addon(name: "Grilled Salmon", price: 6.99),
        Addon(name: "Anchovies", price: 2.49),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Summer Berry Salad",
      description:
          "Celebrate the flavors of summer with our refreshing Berry Salad. Mixed greens, ripe strawberries, blueberries, and toasted almonds, drizzled with a tangy balsamic reduction.",
      imagePath: "images/salads/salad3.png",
      price: 7.49,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Feta Cheese", price: 1.99),
        Addon(name: "Candied Pecans", price: 2.49),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Asian Sesame Chicken Salad",
      description:
          "Experience a fusion of flavors with our Asian Sesame Chicken Salad. Crispy chicken strips, crunchy cabbage, shredded carrots, and crispy wonton strips, tossed in a sesame ginger dressing.",
      imagePath: "images/salads/salad4.png",
      price: 8.99,
      availableAddons: [
        Addon(name: "Grilled Tofu", price: 3.99),
        Addon(name: "Edamame", price: 1.49),
        Addon(name: "Mandarin Oranges", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Caprese Salad",
      description:
          "Savor the simplicity of our Caprese Salad. Ripe tomatoes, fresh mozzarella cheese, and fragrant basil leaves, drizzled with extra virgin olive oil and balsamic glaze.",
      imagePath: "images/salads/salad5.png",
      price: 6.49,
      availableAddons: [
        Addon(name: "Prosciutto", price: 2.99),
        Addon(name: "Balsamic Reduction", price: 1.49),
        Addon(name: "Pine Nuts", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),

    //sides
    Food(
      name: "Crispy Garlic Fries",
      description:
          "Satisfy your cravings with our irresistible Crispy Garlic Fries. Golden fries seasoned with garlic powder and sea salt, served piping hot for the perfect crunch with every bite.",
      imagePath: "images/sides/sides1.png",
      price: 3.49,
      availableAddons: [
        Addon(name: "Truffle Aioli", price: 1.49),
        Addon(name: "Chili Cheese", price: 2.99),
        Addon(name: "Sweet Potato Upgrade", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Onion Rings",
      description:
          "Delight in the crispy perfection of our Onion Rings. Thick-cut onions coated in a seasoned batter, fried to a golden brown and served hot and crunchy.",
      imagePath: "images/sides/sides2.png",
      price: 4.99,
      availableAddons: [
        Addon(name: "Chipotle Mayo", price: 1.99),
        Addon(name: "Beer-Battered Upgrade", price: 2.49),
        Addon(name: "Ranch Dip", price: 0.99),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Loaded Nachos",
      description:
          "Dive into a mountain of flavor with our Loaded Nachos. Crispy tortilla chips smothered in melted cheese, topped with black beans, jalapenos, sour cream, and salsa.",
      imagePath: "images/sides/sides3.png",
      price: 6.99,
      availableAddons: [
        Addon(name: "Guacamole", price: 2.99),
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Extra Cheese", price: 1.49),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Garlic Parmesan Breadsticks",
      description:
          "Indulge in the cheesy goodness of our Garlic Parmesan Breadsticks. Soft, pillowy breadsticks brushed with garlic butter and sprinkled with Parmesan cheese, served warm and oh-so-delicious.",
      imagePath: "images/sides/sides4.png",
      price: 3.99,
      availableAddons: [
        Addon(name: "Marinara Sauce", price: 0.99),
        Addon(name: "Alfredo Dip", price: 1.49),
        Addon(name: "Bacon Bits", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Brussels Sprouts with Balsamic Glaze",
      description:
          "Elevate your meal with our Brussels Sprouts. Crispy Brussels sprouts roasted to perfection and drizzled with a sweet and tangy balsamic glaze, creating a symphony of flavors with every bite.",
      imagePath: "images/sides/sides5.png",
      price: 5.49,
      availableAddons: [
        Addon(name: "Bacon Crumbles", price: 2.49),
        Addon(name: "Parmesan Cheese", price: 1.99),
        Addon(name: "Honey Mustard Dip", price: 1.49),
      ],
      category: FoodCategory.sides,
    ),

    //desserts
    Food(
      name: "Decadent Chocolate Brownie",
      description:
          "Treat yourself to pure indulgence with our Decadent Chocolate Brownie. Rich, fudgy brownie made with premium cocoa, served warm and topped with a scoop of creamy vanilla ice cream.",
      imagePath: "images/desserts/dessert1.png",
      price: 4.99,
      availableAddons: [
        Addon(name: "Hot Fudge Drizzle", price: 1.49),
        Addon(name: "Toasted Pecans", price: 1.99),
        Addon(name: "Caramel Sauce", price: 1.99),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Classic New York Cheesecake",
      description:
          "Experience the timeless elegance of our Classic New York Cheesecake. Smooth and creamy cheesecake nestled on a buttery graham cracker crust, finished with a dollop of whipped cream.",
      imagePath: "images/desserts/dessert2.png",
      price: 5.99,
      availableAddons: [
        Addon(name: "Fresh Strawberries", price: 2.49),
        Addon(name: "Blueberry Compote", price: 1.99),
        Addon(name: "Chocolate Shavings", price: 1.49),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Warm Apple Pie",
      description:
          "Embrace the cozy comfort of our Warm Apple Pie. Juicy apples seasoned with cinnamon and nutmeg, baked in a flaky golden crust, served hot and topped with a scoop of vanilla ice cream.",
      imagePath: "images/desserts/dessert3.png",
      price: 6.49,
      availableAddons: [
        Addon(name: "Caramel Drizzle", price: 1.99),
        Addon(name: "Streusel Topping", price: 1.49),
        Addon(name: "Whipped Cream", price: 0.99),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Velvety Tiramisu",
      description:
          "Indulge in the luscious layers of our Velvety Tiramisu. Espresso-soaked ladyfingers, nestled between layers of mascarpone cheese and dusted with cocoa powder, creating a symphony of flavors with every bite.",
      imagePath: "images/desserts/dessert4.png",
      price: 7.99,
      availableAddons: [
        Addon(name: "Amaretto Soak", price: 2.99),
        Addon(name: "Chocolate Curls", price: 1.49),
        Addon(name: "Hazelnut Praline", price: 2.49),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Luscious Berry Tart",
      description:
          "Delight in the freshness of our Luscious Berry Tart. Buttery pastry shell filled with creamy custard and topped with a vibrant assortment of fresh berries, glazed to perfection.",
      imagePath: "images/desserts/dessert5.png",
      price: 8.49,
      availableAddons: [
        Addon(name: "Raspberry Coulis", price: 1.99),
        Addon(name: "Lemon Zest", price: 0.99),
        Addon(name: "Almond Crumble", price: 1.49),
      ],
      category: FoodCategory.desserts,
    ),

    //drinks
    Food(
      name: "Classic Lemonade",
      description:
          "Quench your thirst with the refreshing taste of our Classic Lemonade. Made with freshly squeezed lemons and a hint of sweetness, it's the perfect way to beat the heat.",
      imagePath: "images/drinks/drink1.png",
      price: 2.49,
      availableAddons: [
        Addon(name: "Strawberry Infusion", price: 0.99),
        Addon(name: "Mint Leaves", price: 0.49),
        Addon(name: "Lemon Wedge", price: 0.29),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Iced Caramel Macchiato",
      description:
          "Indulge in the creamy richness of our Iced Caramel Macchiato. Smooth espresso combined with velvety milk, swirled with caramel syrup, and served over ice for a delightful pick-me-up.",
      imagePath: "images/drinks/drink2.png",
      price: 4.99,
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 1.49),
        Addon(name: "Vanilla Syrup", price: 0.99),
        Addon(name: "Whipped Cream", price: 0.49),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Tropical Mango Smoothie",
      description:
          "Escape to the tropics with our refreshing Tropical Mango Smoothie. A blend of ripe mangoes, creamy yogurt, and a splash of orange juice, it's a burst of sunshine in every sip.",
      imagePath: "images/drinks/drink3.png",
      price: 3.99,
      availableAddons: [
        Addon(name: "Coconut Flakes", price: 0.99),
        Addon(name: "Pineapple Wedge", price: 0.49),
        Addon(name: "Passionfruit Drizzle", price: 0.79),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Sparkling Raspberry Limeade",
      description:
          "Elevate your taste buds with our Sparkling Raspberry Limeade. Fizzy soda water infused with tangy lime and sweet raspberry flavors, it's a bubbly sensation that will tantalize your senses.",
      imagePath: "images/drinks/drink4.png",
      price: 3.49,
      availableAddons: [
        Addon(name: "Raspberry Puree", price: 0.99),
        Addon(name: "Lime Twist", price: 0.49),
        Addon(name: "Sparkling Water Upgrade", price: 0.79),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Iced Green Tea",
      description:
          "Stay cool and hydrated with our revitalizing Iced Green Tea. Brewed from premium green tea leaves and served over ice, it's a refreshing beverage with a hint of natural sweetness.",
      imagePath: "images/drinks/drink5.png",
      price: 2.99,
      availableAddons: [
        Addon(name: "Honey Syrup", price: 0.49),
        Addon(name: "Lemon Slice", price: 0.29),
        Addon(name: "Mint Sprig", price: 0.39),
      ],
      category: FoodCategory.drinks,
    ),
  ];

  //GETTERS
  List<Food> get menu => _menu;

  //OPERATORS

  //add to cart

  //remove from cart

  //get total price of cart

  //get total number of items in cart

  //clear cart

  //HELPERS

  //generate a receipt

  //format double value into money

  //format list of addons into a string summary
}
