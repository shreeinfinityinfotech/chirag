import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget',
      home: RowWidgetExample(),
    );
  }
}

class RowWidgetExample extends StatelessWidget {
  const RowWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey.shade400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            /*crossAxisAlignment: CrossAxisAlignment.center,*/
            /*mainAxisSize: MainAxisSize.min,*/
            /*verticalDirection: VerticalDirection.up,*/
            /*textDirection: TextDirection.rtl,*/
            children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.amber,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.red,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.green,
              )
            ],
          ),
        ),
      )
    );
  }
}
