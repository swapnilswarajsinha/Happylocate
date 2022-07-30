import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:happylocate/homeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'HappyLocate',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Color(0xFF1554F6)),
        home: AnimatedSplashScreen(
          splash: Image.asset("assets/Images/logo.png"),
          nextScreen: HomeScreen(),
        ));
  }
}
