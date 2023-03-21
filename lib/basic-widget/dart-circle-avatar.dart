import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circle Avatar Widget',
      home: CircleAvatarExample(),
    );
  }
}

class CircleAvatarExample extends StatelessWidget {
  const CircleAvatarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 80,
          backgroundColor: Colors.green,
          /*backgroundImage: NetworkImage()*/
          child: CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage('assets/images/user.png'),
          ),
        )
      ),
    );
  }
}
