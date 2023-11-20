import 'package:bubbl/utilities/router.dart';
import 'package:flutter/material.dart';

import 'authentication/welcom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    navigate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  void navigate() {
    _controller.forward();

    Future.delayed(const Duration(seconds: 2), () async {
      nextPageAndRemovePrevious(context, page: const WelcomeScreen());
    });
  }
}
