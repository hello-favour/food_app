import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class AppFoodTile extends StatelessWidget {
  final Food food;
  final void Function() onTap;
  const AppFoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              //text food details
              Expanded(
                child: Column(
                  children: [
                    Text(food.name),
                    Text(food.price.toString()),
                    Text(food.description),
                  ],
                ),
              ),
              //food image
              Image.asset(food.imagePath),
            ],
          ),
        )
      ],
    );
  }
}
