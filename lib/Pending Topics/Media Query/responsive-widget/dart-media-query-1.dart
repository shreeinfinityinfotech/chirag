import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Query API',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double boxWidth = size.width * .5 - 20;
    double boxHeight = size.height * .5 - 20;
    Orientation orientation = MediaQuery.of(context).orientation;
    print('screen rotate');
    return Scaffold(
     /* appBar: AppBar(
        title: Text('Media Query API'),
      ),*/
      body: Center(
        child: (orientation == Orientation.landscape)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: layoutWidget(boxWidth),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: layoutWidget(boxHeight),
              ),
      ),
    );
  }

  layoutWidget(double boxSize) {
    return [
      Container(
        width: boxSize,
        height: boxSize,
        color: Colors.blue,
      ),
      Container(
        width: boxSize,
        height: boxSize,
        color: Colors.red,
      ),
    ];
  }
}
