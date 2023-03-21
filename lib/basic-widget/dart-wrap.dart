import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrap widget',
      home: WrapWidgetExample(),
    );
  }
}

class WrapWidgetExample extends StatelessWidget {
  const WrapWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Wrap(
            /*runAlignment: WrapAlignment.spaceAround,
            alignment: WrapAlignment.spaceEvenly,*/
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0, // gap between lines
           direction: Axis.horizontal,
          children: [
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
              label: const Text('Hamilton'),
            ),
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
              label: const Text('Lafayette'),
            ),
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('HM')),
              label: const Text('Mulligan'),
            ),
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('JL')),
              label: const Text('Laurens'),
            ),
         /* Container(
            color: Colors.red,
            width: 100,
            height: 50,
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 50,
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 50,
          ),
          Container(
            color: Colors.amber,
            width: 100,
            height: 50,
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 50,
          )*/
        ],
      )),
    );
  }
}
