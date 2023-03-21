import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: RowColumnPage(),
    );
  }
}

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row and Column'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /*Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.train,
                  size: 30,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Train',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.airplanemode_active,
                  size: 30,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Airplane',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.tram,
                  size: 30,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tram',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            )*/

            customColumn('Tram', Icons.tram),
            customColumn('Airplane', Icons.airplanemode_active),
            customColumn('Train', Icons.train),

          ],
        ),
      ),
    );
  }

  Widget customColumn(String title, IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.green,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    );
  }
}
