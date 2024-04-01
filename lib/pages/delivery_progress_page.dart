import 'package:flutter/material.dart';
import 'package:food_app/components/app_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Delivery in progress..."),
      ),
      body: const Column(
        children: [
          AppReceipt(),
        ],
      ),
    );
  }
}
