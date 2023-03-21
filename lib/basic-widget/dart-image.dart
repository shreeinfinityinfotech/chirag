import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Widget',
      home: ImageWidgetExample(),
    );
  }
}

class ImageWidgetExample extends StatelessWidget {
  const ImageWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: Center(
        child: Image.network(
          'https://reqres.in/img/faces/7-image.jpg',
          height: 140,
          width: 140,
        ),
        /*child: Image.asset(
          'assets/images/shirt.png',
          height: 140,
          width: 140,
        ),*/
      ),
    );
  }
}
