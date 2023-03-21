import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circle App Example',
      home: CircleavtarExcample(),
    );
  }
}

class CircleavtarExcample extends StatelessWidget {
  const CircleavtarExcample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Container(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.red,
                      child: CircleAvatar(
                        radius: 95,
                        backgroundImage: NetworkImage('https://5.imimg.com/data5/SELLER/Default/2021/8/YY/IE/JK/113884685/2-500x500.jpeg'),
                      ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.red,
                      height: 80,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ));
  }
}
