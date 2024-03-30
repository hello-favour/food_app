import 'package:flutter/material.dart';
import 'package:food_app/components/app_description_box.dart';
import 'package:food_app/components/app_drawer.dart';
import 'package:food_app/components/app_sliver_appbar.dart';
import 'package:food_app/components/my_current_location.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const AppDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          AppSliverAppBar(
            title: const Text("Hello"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                //My current location
                const MyCurrentLocation(),
                //description box
                const AppDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Container(),
      ),
    );
  }
}
