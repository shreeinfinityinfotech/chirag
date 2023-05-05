import 'package:flutter/material.dart';

void main() => runApp(firstScreenTabbar());

class firstScreenTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('First Screen'),
        ),
      ),
    );
  }
}
