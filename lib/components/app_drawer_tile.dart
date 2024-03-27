import 'package:flutter/material.dart';

class AppDrawerTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function() onTap;
  const AppDrawerTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: ListTile(
        onTap: onTap,
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
    );
  }
}
