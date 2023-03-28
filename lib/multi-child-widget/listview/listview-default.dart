import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Widget',
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Widget'),
        ),
        body: ListView(
          /*reverse: true,*/
          /*scrollDirection: Axis.vertical,*/
          /*padding: EdgeInsets.all(20),*/
          children: [
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 50,
              color: Colors.amber[400],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[300],
              child: const Center(child: Text('Entry C')),
            ),
            Container(
              height: 50,
              color: Colors.amber[200],
              child: const Center(child: Text('Entry D')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry E')),
            ),
            Container(
              height: 50,
              color: Colors.amber[50],
              child: const Center(child: Text('Entry F')),
            ),
          ],
        ));
  }
}
