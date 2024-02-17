import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/category/category_page.dart';
import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';
import '../pages/user/user_page.dart';
import 'component/top_app_bar/top_app_bar.dart';
import 'cubit/bottom_nav_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavCubit(),
      child: const MainScreenView(),
    );
  }
}

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopAppBar(),
        // body: Center(
        //   child: Text('main_screen'),
        // ),
        body: BlocBuilder<BottomNavCubit, BottomNav>(builder: (_, state) {
          switch (state) {
            case BottomNav.home:
              return const HomePage();

            case BottomNav.category:
              return const CategoryPage();

            case BottomNav.search:
              return const SearchPage();

            case BottomNav.user:
              return const UserPage();
          }
        }),
        bottomNavigationBar: BlocBuilder<BottomNavCubit, BottomNav>(
          builder: (_, state) {
            return BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              currentIndex: state.index,
              onTap: (index) =>
                  context.read<BottomNavCubit>().changeNavIndex(index),
              items: List.generate(
                BottomNav.values.length,
                (index) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(BottomNav.values[index].icon),
                  label: BottomNav.values[index].toName,
                  activeIcon:
                      SvgPicture.asset(BottomNav.values[index].actionIcon),
                ),
              ),
              // items: [
              //   BottomNavigationBarItem(
              //     icon: SvgPicture.asset(AppIcons.navHome),
              //     activeIcon: SvgPicture.asset(AppIcons.navHomeOn),
              //     label: 'home',
              //   ),
              //   BottomNavigationBarItem(
              //     icon: SvgPicture.asset(AppIcons.navCategory),
              //     activeIcon: SvgPicture.asset(AppIcons.navCategoryOn),
              //     label: 'category',
              //   ),
              //   BottomNavigationBarItem(
              //     icon: SvgPicture.asset(AppIcons.navSearch),
              //     activeIcon: SvgPicture.asset(AppIcons.navSearchOn),
              //     label: 'search',
              //   ),
              //   BottomNavigationBarItem(
              //     icon: SvgPicture.asset(AppIcons.navUser),
              //     activeIcon: SvgPicture.asset(AppIcons.navUserOn),
              //     label: 'user',
              //   ),
              // ],
            );
          },
        ));
  }
}
