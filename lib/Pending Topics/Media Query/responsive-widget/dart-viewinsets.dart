import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Query (viewInset)',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    EdgeInsets viewInset = MediaQuery.of(context).viewInsets;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: viewInset.bottom),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter message'
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter message'
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter message'
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter message'
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter message'
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter message'
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter message'
                  ),
                ),
                Text('''
            padding-top : ${viewInset.top}
            padding-bottom : ${viewInset.bottom}
            padding-left : ${viewInset.left}
            padding-right : ${viewInset.right}
            '''),
              ],
            ),
          ),
        ),
      )
    );
  }
}
