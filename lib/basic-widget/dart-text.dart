import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: TextWidgetExample(),
    );
  }
}

class TextWidgetExample extends StatelessWidget {
  const TextWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget'),
      ),
      body: Center(
        child: Text(
          'Welcome to Tops Technologies Welcome to Tops Technologies Welcome to Tops Technologies',
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Colors.blue.shade800,
            backgroundColor: Colors.grey.shade300,
            /*wordSpacing: 20*/
            /*letterSpacing: 10*/
           /* decoration: TextDecoration.combine([
              TextDecoration.underline,
              TextDecoration.overline
            ]),
            decorationStyle: TextDecorationStyle.wavy*/
            /*decorationStyle: TextDecorationStyle.dotted*/
          ),
        ),
      ),
    );
  }
}
