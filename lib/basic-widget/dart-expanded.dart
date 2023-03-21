import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded Widget',
      home: ExpandedWidgetExample(),
    );
  }
}

class ExpandedWidgetExample extends StatelessWidget {
  const ExpandedWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.red.shade400,
                child: Row(

                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blue,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
            )
          ],
        )
      ),
    );
  }
}

