import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:uts_riska/screen/home.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      childWidget: Image.asset(
        "assets/splash.png",
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
      duration: const Duration(milliseconds: 4500),
      animationDuration: const Duration(milliseconds: 1000),
      onAnimationEnd: () => debugPrint("On Scale End"),
      nextScreen: const Home(),
    );
  }
}
