import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/theme/constant/app_icons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44),
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
            child: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text(
                "tabBar",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: SvgPicture.asset(AppIcons.mainLogo),
              ),
              leadingWidth: 86,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    AppIcons.location,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.background,
                        BlendMode.srcIn),
                    // color: Theme.of(context).colorScheme.background,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    AppIcons.cart,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.background,
                        BlendMode.srcIn),
                    // color: Theme.of(context).colorScheme.background,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('main_screen'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navHome),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navCategory),
            label: 'category',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navSearch),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navUser),
            label: 'user',
          ),
        ],
      ),
    );
  }
}
