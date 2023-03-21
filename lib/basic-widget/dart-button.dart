import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Button',
      home: ButtonWidgetExample(),
    );
  }
}

class ButtonWidgetExample extends StatelessWidget {
  const ButtonWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Button'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              // this block will execute when user click this button
              print('Text button clicked');
            },
            child: Text('Click Me'),
          ),
          TextButton.icon(
            onPressed: () {
              print('Text button with icon clicked');
            },
            icon: Icon(Icons.star),
            label: Text('Click Me'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Click Me'),
          ),
          ElevatedButton(
            onPressed: () {},
            onLongPress: () {
              print('Contained button clicked');
            },
            child: Text('Click Me'),
          )
        ],
      )),
    );
  }
}
