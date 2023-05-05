import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Builder',
      home: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: Text(
                    'screen height : ${MediaQuery.of(context).size.height}\n'
                    'Container height : ${constraints.maxHeight}',
                    style: TextStyle(fontSize: 20),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text(
                    'screen height : ${MediaQuery.of(context).size.height}\n'
                        'Container height : ${constraints.maxHeight}',
                    style: TextStyle(fontSize: 20),
                  ),
                );
              },
            )
          )
        ],
      )),
    );
  }
}
