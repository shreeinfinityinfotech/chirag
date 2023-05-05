import 'package:flutter/material.dart';

void main() => runApp(secondScreenTabbar());

class secondScreenTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Second Screen'),
        ),
      ),
    );
  }
}
