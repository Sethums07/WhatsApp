import 'package:flutter/material.dart';

class popup extends StatelessWidget {
  const popup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  PopupMenuButton(itemBuilder: (context) => [
      PopupMenuItem(
      child: Text(
      "new group",
    ),
    ),

    PopupMenuItem(
    child: Text(
    "call",
    ),
    ),
    PopupMenuItem(
    child: Text(
    "message",
    ),
    ),
    PopupMenuItem(
    child: Text(
    "community",
    ),
    ),
    PopupMenuItem(
    child: Text(
    "chat",
    ),
    ),
    ]
    );
    }
}