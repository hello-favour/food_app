import 'package:flutter/material.dart';

class AppDescriptionBox extends StatelessWidget {
  const AppDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      child: Row(
        children: [
          //delivery fee
          Column(
            children: [
              Text("\$0.99"),
              Text("Delivery fee")
            ],
          ),
           Column(
            children: [
              Text("3-30 min"),
              Text("Delivery time")
            ],
          ),
        ],
      ),
    );
  }
}
