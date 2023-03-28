import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var counter = 0;
  var fontSize = 20.0;

  void increment() {
    setState(() {
      counter++;
      fontSize+=2;
      print('increment : $counter');
    });
  }

  void decrement() {
    setState(() {
      counter--;
      fontSize-=2;
      print('decrement : $counter');
    });
  }

  @override
  Widget build(BuildContext context) {

   // counter = 0;

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  decrement();
                },
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                '$counter',
                style: TextStyle(fontSize: fontSize),
              ),
              ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
