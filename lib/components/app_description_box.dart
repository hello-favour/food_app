import 'package:flutter/material.dart';

class AppDescriptionBox extends StatelessWidget {
  const AppDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    //var textstyles
    var appPrimaryTextstyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );

    var appSecondaryTextstyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          //delivery fee
          Column(
            children: [
              Text(
                "\$0.99",
                style: appPrimaryTextstyle,
              ),
              Text(
                "Delivery fee",
                style: appSecondaryTextstyle,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "3-30 min",
                style: appPrimaryTextstyle,
              ),
              Text(
                "Delivery time",
                style: appSecondaryTextstyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
