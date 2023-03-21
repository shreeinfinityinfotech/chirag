import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Widget',
      home: StackWidgetExample(),
    );
  }
}

class StackWidgetExample extends StatelessWidget {
  const StackWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.grey,
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              /*fit: StackFit.expand,*/
              /*textDirection: TextDirection.ltr,*/
              children: [
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.green,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.yellow,
                  height: 100,
                  width: 100,
                ),
                Positioned(
                  /*height: 100,
                  width: 100,*/
                  /*right: 0,*/
                  bottom: -25,
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
