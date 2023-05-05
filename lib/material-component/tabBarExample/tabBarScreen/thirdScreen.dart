import 'package:flutter/material.dart';

void main() => runApp(thirdScreenTabbar());

class thirdScreenTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('third Screen'),
        ),
      ),
    );
  }
}
