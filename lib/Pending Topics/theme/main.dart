import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme',
      /*theme: ThemeData(
          *//*brightness: Brightness.dark,*//*
          *//*scaffoldBackgroundColor: Colors.amber,*//*
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
              .copyWith(
                  secondary: Colors.green,
                  onSecondary: Colors.black *//*, onPrimary: Colors.black*//*)
              .copyWith(brightness: Brightness.light)
              .copyWith(background: Colors.amber),
          textTheme: TextTheme(
              titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              labelLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              labelMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              labelSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          fontFamily: 'Georgia'),*/
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: isChecked ? ThemeMode.dark : ThemeMode.light,
      home: WidgetScreen(),
    );
  }
}

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({Key? key}) : super(key: key);

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}
var isChecked = false;
class _WidgetScreenState extends State<WidgetScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Theme(
        data: ThemeData(
          splashColor: Colors.red,
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AnotherScreen(),
              ),
            );
          },
          child: Icon(Icons.navigate_next),
        ),
      ),
      appBar: AppBar(
        title: Text('Flutter theme'),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter Theme',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Theme widgets that define the colors and font styles for a particular part of the application.',
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Terms and Conditions',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        decoration: TextDecoration.underline,
                        color: Colors.teal),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Title',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Message',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Button1'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Button2'),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class AnotherScreen extends StatefulWidget {
  const AnotherScreen({Key? key}) : super(key: key);

  @override
  State<AnotherScreen> createState() => _AnotherScreenState();
}

class _AnotherScreenState extends State<AnotherScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(data: ThemeData(
      primarySwatch: Colors.purple
    ), child: Scaffold(
      appBar: AppBar(
        title: Text('Another Screen', ),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World', style: AppTheme.MyTextStyle20(color: Colors.red),),
        ),

      ),
    ),);
  }
}
