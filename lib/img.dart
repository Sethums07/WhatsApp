import 'package:flutter/material.dart';
void main(){
  runApp(image());
}
class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            height: 500,
            width: 400,
            color: Colors.red,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("lib/images/istockphoto-1146517111-612x612.jpg"),
              ),
            ),
          ),
        ),
    );
    }
}