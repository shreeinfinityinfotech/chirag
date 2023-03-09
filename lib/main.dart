import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'hello chirag',
      home: ColumWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class ColumWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: nyAppbar(),
      body: Container(
         color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Text("hello chirag "),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
              ),
            ],
          )),
    );
  }
}
class nyAppbar extends StatelessWidget with PreferredSizeWidget {
 @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("hello chirag"),
    );
  }

 @override
 Size get preferredSize => Size.fromHeight(kToolbarHeight);
}


