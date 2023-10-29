import 'package:flutter/material.dart';
import 'list.dart';

class status extends StatelessWidget {
  const status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          hat(
            data: 'my status',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('recently updtaes'),
            ),
          ),
          status1(),
        ],
      ),
    );
  }
}

class status1 extends StatelessWidget {
  const status1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return hat(data: abcd[index]);
            }),
      ),
    );
  }
}

class hat extends StatelessWidget {
  final String? data;
  const hat({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data!),
      subtitle: Text("Just Now"),
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 15,
        ),
      ),
    );
  }
}
