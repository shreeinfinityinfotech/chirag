import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listview.builder',
      home: ListViewBuilderExample(),
    );
  }
}

class ListViewBuilderExample extends StatelessWidget {
  ListViewBuilderExample({Key? key}) : super(key: key);

  var list = <int>[900, 800, 700, 600, 500, 400, 300, 200, 100, 50];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview Builder'),
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.amber[list[index]],
              child: Center(
                child: Text('List-item : ${index+1}'),
              ),
            );
          },
        ));
  }
}
