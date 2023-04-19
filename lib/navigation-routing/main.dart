import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'SecondScreen.dart';
import 'firstScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: FirstScreen(),
    );
  }
}
