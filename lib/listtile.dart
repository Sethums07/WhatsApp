import 'package:flutter/material.dart';
import 'page2.dart';
import 'list.dart';

class chat extends StatelessWidget {
  const chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: abcd.length,
        itemBuilder: (BuildContext context, int index) {
          return class2(
            data: abcd[index],
            img: img[index],
          );
        },
      ),
    );
  }
}

class class2 extends StatelessWidget {
  final String? data;
  final ImageProvider img;
  const class2({Key? key, required this.data, required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page1()));
        },
        title: Text(data!),
        subtitle: Text("message"),
        trailing: Text('12.00'),
        leading: CircleAvatar(backgroundImage: img));
  }
}
