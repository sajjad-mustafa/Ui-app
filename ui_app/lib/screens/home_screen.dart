import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,crossAxisSpacing: 5,mainAxisSpacing: 5),
        
        itemBuilder: (context, index) =>
            Container(
              height: 100,
              color: Colors.red,
            ));
  }
}
