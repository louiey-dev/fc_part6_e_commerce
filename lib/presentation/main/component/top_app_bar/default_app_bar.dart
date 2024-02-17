import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../cubit/bottom_nav_cubit.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar(this.bottomNav, {super.key});

  final BottomNav bottomNav;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        child: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            // "tabBar",
            bottomNav.toName,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.all(4.0),
          //     child: SvgPicture.asset(
          //       AppIcons.location,
          //       colorFilter: ColorFilter.mode(
          //           Theme.of(context).colorScheme.background, BlendMode.srcIn),
          //       // color: Theme.of(context).colorScheme.background,
          //     ),
          //   ),
          //   Padding(
          //     padding: const EdgeInsets.all(4.0),
          //     child: SvgPicture.asset(
          //       AppIcons.cart,
          //       colorFilter: ColorFilter.mode(
          //           Theme.of(context).colorScheme.background, BlendMode.srcIn),
          //       // color: Theme.of(context).colorScheme.background,
          //     ),
          //   )
          // ],
        ),
      ),
    );
  }
}
