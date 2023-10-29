import 'package:flutter/material.dart';
import 'call.dart';
import 'community.dart';
import 'listtile.dart';
import 'popup.dart';
import 'status.dart';

void main() {
  runApp(myapp());
}

int aa = 0;

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff0a6752),
            actions: [
              popup(),
            ],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("whatsapp"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.camera_alt_rounded),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    )
                  ],
                )
              ],
            ),
            bottom: TabBar(
              onTap: (yes) {},
              labelColor: Colors.black,
              tabs: [
                Tab(icon: Icon(Icons.groups)),
                Tab(
                  child: Text(
                    "chat",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Tab(
                  child: Text(
                    "status",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Tab(
                  child: Text(
                    "call",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            community(),
            chat(),
            status(),
            call2(),
          ]),
        ),
      ),
    );
  }
}
