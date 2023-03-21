import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Widget',
      home: ContainerWidgetExample(),
    );
  }
}

class ContainerWidgetExample extends StatelessWidget {
  const ContainerWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Widget'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.amber,
            /*border: Border(
              right: BorderSide(
                color: Colors.red,
                width: 5
              )
            ),*/
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.amber,
                Colors.amber.shade400,
                Colors.amber.shade100
              ]
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                /*blurStyle: BlurStyle.outer,*/
                spreadRadius: 5,
                blurRadius: 20,
                offset: Offset(3, 0)
              ),
            ],
            shape: BoxShape.circle,
            /*borderRadius: BorderRadius.circular(20),*/
          ),
          /*transform: Matrix4.rotationZ(0.1),*/
          /*padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),*/
          /*padding: EdgeInsets.fromLTRB(10, 20, 30, 40),*/
          /*margin: EdgeInsets.all(10),*/
          /*color: Colors.blue.shade300,*/
          child: Text(
            'Hello All.. Welcome for dart training.',
            /*style: TextStyle(fontSize: 20),*/
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
