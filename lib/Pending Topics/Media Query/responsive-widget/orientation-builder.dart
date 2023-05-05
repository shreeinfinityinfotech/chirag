import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Orientation Builder', home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Orientation Builder'),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.builder(
              itemCount: 20,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: orientation == Orientation.portrait ? 2 :3),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.red,
                );
              },
            );
          },
        ));
  }
}
