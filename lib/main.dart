import 'package:flutter/material.dart';
import 'package:netflix_1/view/splash_screen/splash_screen.dart';

void main() => runApp(Netflix());

class Netflix extends StatelessWidget {
  Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
