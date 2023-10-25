import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:smart_shop/screens/cart_screen.dart';
import 'package:smart_shop/screens/home_screen.dart';
import 'package:smart_shop/screens/profile_screen.dart';
import 'package:smart_shop/screens/search_screen.dart';
import 'package:smart_shop/theme/app_colors.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currentPage = 1;
  late PageController controller;

  @override
  Widget build(BuildContext context) {
    controller = PageController(initialPage: currentPage);
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [
          HomeScreen(),
          CartScreen(),
          SearchScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentPage,
          indicatorColor: AppColors.iconColor,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          height: kBottomNavigationBarHeight,
          onDestinationSelected: (index) {
            setState(() {
              currentPage = index;
            });
            controller.jumpToPage(currentPage);
          },
          destinations: const [
            (NavigationDestination(
              selectedIcon: Icon(IconlyBold.home),
              icon: Icon(
                IconlyLight.home,
              ),
              label: 'Home',
            )),
            (NavigationDestination(
              selectedIcon: Icon(IconlyBold.bag),
              icon: Icon(IconlyLight.bag),
              label: 'Cart',
            )),
            (NavigationDestination(
              selectedIcon: Icon(IconlyBold.search),
              icon: Icon(IconlyLight.search),
              label: 'Search',
            )),
            (NavigationDestination(
              selectedIcon: Icon(IconlyBold.profile),
              icon: Icon(IconlyLight.profile),
              label: 'Profile',
            ))
          ]),
    );
  }
}
