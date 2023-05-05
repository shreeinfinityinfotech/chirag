import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Query (padding)',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets viewPadding = MediaQuery.of(context).viewPadding;
    EdgeInsets viewInset = MediaQuery.of(context).viewInsets;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: viewPadding.top),
        child: Text('''
        padding-top : ${viewPadding.top}
        padding-bottom : ${viewPadding.bottom}
        padding-left : ${viewPadding.left}
        padding-right : ${viewPadding.right}
        '''),
      ),
    );
  }
}
