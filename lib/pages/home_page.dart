import 'package:flutter/material.dart';
import 'package:food_app/components/app_description_box.dart';
import 'package:food_app/components/app_drawer.dart';
import 'package:food_app/components/app_sliver_appbar.dart';
import 'package:food_app/components/app_tab_bar.dart';
import 'package:food_app/components/my_current_location.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const AppDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          AppSliverAppBar(
            title: AppTabBar(
              tabController: tabController,
            ),
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
        body: TabBarView(
          children: [
            Text("Data"),
            Text("Data"),
            Text("Data"),
          ],
        ),
      ),
    );
  }
}
