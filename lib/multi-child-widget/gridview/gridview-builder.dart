import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gridview',
      home: GridViewExample(),
    );
  }
}

class GridViewExample extends StatelessWidget {
  GridViewExample({Key? key}) : super(key: key);

  var list = <int>[900, 800, 700, 600, 500, 400, 300, 200, 100, 50];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview'),
      ),
      body: GridView.builder(
        itemCount: list.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber[list[index]],
            child: Center(child: Text('Entry : $index')),
          );
        },
      ),
    );
  }
}
