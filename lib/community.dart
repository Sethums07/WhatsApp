import 'package:flutter/material.dart';

class community extends StatelessWidget {
  const community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Communities",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage("lib/images/img.png"))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Introducing community",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
              "Easily organize your related groups and send announcement.\n"
                  "Now,your communities,like neighborhoods or school,\n"
                  "can have their own space.",
              style: TextStyle(
                fontSize: 20,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Start a community",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
            ),
          )
          ],
        );
    }
}