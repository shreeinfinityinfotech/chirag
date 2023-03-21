import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Widget Practical',
      home: StackPractical(),
    );
  }
}

class StackPractical extends StatelessWidget {
  const StackPractical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
        child: Stack(
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.white,
            ),
            Container(
              width: 250,
              height: 250,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withAlpha(0),
                    Colors.black12,
                    Colors.black45
                  ],
                ),
              ),
              padding: const EdgeInsets.all(5.0),
              child: Text('Tops Technologies', style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}

