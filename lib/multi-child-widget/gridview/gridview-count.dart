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
  const GridViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            color: Colors.amber[500],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            
            color: Colors.amber[400],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            
            color: Colors.amber[300],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            
            color: Colors.amber[200],
            child: const Center(child: Text('Entry D')),
          ),
          Container(
            
            color: Colors.amber[100],
            child: const Center(child: Text('Entry E')),
          ),
          Container(
            
            color: Colors.amber[50],
            child: const Center(child: Text('Entry A')),
          ),
        ],
      ),
    );
  }
}
