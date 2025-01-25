import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  String name;

  VoidCallback onPress;
  
   RoundButton({required this.name,required this.onPress,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepOrange,
        ),
        child: Center(child: Text(name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
    );
  }
}
