import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 2000,
          width: 2000,
          decoration: BoxDecoration(
              image: DecorationImage(
                // rinshad face
                  image: AssetImage("lib/images/35277bea-841b-4a0d-9bf5-d961518533cf.jpg" )
              )
          ),
        ),
      ),

    );
  }
}
class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Center(
              child: Text('ziyad')
          ),
        ),
      ),

    );
  }
}