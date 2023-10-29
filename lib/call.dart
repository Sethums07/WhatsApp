import 'package:flutter/material.dart';
import 'list.dart';

class call extends StatelessWidget {
  final String? data;
  final ImageProvider? img;
  final String? call1;
  final IconData? icon1;
  const call(
      {Key? key,
      required this.data,
      required this.img,
      required this.call1,
      required this.icon1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {},
        title: Text(data!),
        subtitle: Text(call1!),
        trailing: Icon(icon1!),
        leading: CircleAvatar(backgroundImage: img!));
  }
}

class call2 extends StatelessWidget {
  const call2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: abcd.length,
      itemBuilder: (BuildContext context, int index) {
        return call(
          data: abcd[index],
          img: img[index],
          call1: call1[index],
          icon1: icon1[index],
        );
      },
    );
  }
}

class calllogo extends StatelessWidget {
  const calllogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
