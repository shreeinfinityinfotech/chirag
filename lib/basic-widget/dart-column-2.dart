import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget',
      home: ColumnScreen(),
    );
  }
}

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Column Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            /*verticalDirection: VerticalDirection.down,*/
            children: [
              Image.asset(
                'assets/images/shirt.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Tops Technologies',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Training, Outsourcing, Placement and Study abroad',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,),
                ),
              ),
            ],
          ),
        ));
  }
}
