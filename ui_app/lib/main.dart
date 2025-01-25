import 'package:flutter/material.dart';
import 'package:ui_app/screens/components/devoice.info.dart';
import 'package:ui_app/screens/home_screen.dart';
import 'package:ui_app/screens/profile_screen.dart';
import 'package:ui_app/screens/shots_screen.dart';
import 'package:ui_app/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignupScreen(),
    );
  }
}

