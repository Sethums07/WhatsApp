import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: cat(),
  ));
}

page(context, pg) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => pg));
}

class cat extends StatelessWidget {
  const cat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page 1")),
      body: Center(
        child: ElevatedButton(
          child: Text("page 1"),
          onPressed: () {
            page(context, dog());
          },
        ),
      ),
    );
  }
}

class dog extends StatelessWidget {
  const dog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("page 2"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("page 3"),
                onPressed: () => page(context, rat()),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class rat extends StatelessWidget {
  const rat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page 3")),
      body: Center(
        child: ElevatedButton(
          child: Text("page 3"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
