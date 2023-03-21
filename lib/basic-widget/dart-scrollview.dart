import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Single Child ScrollView',
      home: ScrollWidgetExample(),
    );
  }
}

class ScrollWidgetExample extends StatelessWidget {
  const ScrollWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        /*reverse: true,*/
        /*physics: BouncingScrollPhysics(),*/
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 80,
              color: Colors.orange,
            ),
            Container(
              height: 80,
              color: Colors.green,
            ),
            Container(
              height: 80,
              color: Colors.blue,
            ),
            Container(
              height: 80,
              color: Colors.orange,
            ),
            Container(
              height: 80,
              color: Colors.green,
            ),
            Container(
              height: 80,
              color: Colors.blue,
            ),
            Container(
              height: 80,
              color: Colors.orange,
            ),
            Container(
              height: 80,
              color: Colors.green,
            ),
            Container(
              height: 80,
              color: Colors.blue,
            ),
            Container(
              height: 80,
              color: Colors.orange,
            ),
            Container(
              height: 80,
              color: Colors.green,
            ),
            Container(
              height: 80,
              color: Colors.blue,
            )
          ],
        ),
      )
    );
  }
}

