import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Text span Widget', home: TextSpanWidgetExample());
  }
}

class TextSpanWidgetExample extends StatelessWidget {
  const TextSpanWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textspan Widget'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
              text: 'Welcome in ',
              style: TextStyle(fontSize: 20, color: Colors.black),
              children: [
                TextSpan(
                    text: 'Flutter Training',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic))
              ]),
        ),
      ),
    );
  }
}
