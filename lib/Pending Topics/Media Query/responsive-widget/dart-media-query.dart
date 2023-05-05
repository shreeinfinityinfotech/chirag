import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Query API',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query API'),
      ),
      body: Center(
        /*child: Text('width : ${size.width}\nheight : ${size.height}\nshortestSide : ${size.shortestSide}\nlongestSide : ${size.longestSide}'),*/
        child: Container(
          width: size.height / 2,
          height: size.height * 0.5,
          color: Colors.green,
          alignment: Alignment.center,
          child: Text(
            'Tops Tech',
            style: TextStyle(fontSize: size.height * 0.06),
          ),
        ),
      ),
    );
  }
}
