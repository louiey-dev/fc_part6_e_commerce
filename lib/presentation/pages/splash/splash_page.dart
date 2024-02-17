import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../routes/route_path.dart';

//TODO 로드인 bloc
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () => context.push(RoutePath.home));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO : 하드 코딩된 값 변경 할것
      backgroundColor: Color(0xFF5F0080),
      body: Center(
        child: SvgPicture.asset(
          'assets/svg/main_logo.svg',
        ),
      ),
    );
  }
}
