import 'package:flutter/material.dart';

import 'package:untitled/material-component/bottom-navigation-bar/model/myWidget.dart';
import 'package:untitled/material-component/bottom-navigation-bar/screen/Bankscreen.dart';
import 'package:untitled/material-component/bottom-navigation-bar/screen/Profilescreen.dart';
import 'package:untitled/material-component/bottom-navigation-bar/screen/Searchscreen.dart';
import 'package:untitled/material-component/bottom-navigation-bar/screen/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _titel = "bottoma navigation example..";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _titel,
      home: MystatefullWidget(),
    );
  }
}

class MystatefullWidget extends StatefulWidget {
  const MystatefullWidget({Key? key}) : super(key: key);

  @override
  State<MystatefullWidget> createState() => _MystatefullWidgetState();
}

class _MystatefullWidgetState extends State<MystatefullWidget> {
  int _selectedIndex = 0;
  List<Mywidget> _widgetOptions = <Mywidget>[
    Mywidget(widget: Homescreen(), color: Colors.red, title: "Home"),
    Mywidget(widget: Profilescreen(), color: Colors.blue, title: "Profile"),
    Mywidget(widget: Searchscreen(), color: Colors.lightGreen, title: "Search"),
    Mywidget(widget: bankscreen(), color: Colors.brown, title: "Bank")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _widgetOptions[_selectedIndex].color,
        title: Text(_widgetOptions[_selectedIndex].title.toString()),
      ),
      body: _widgetOptions[_selectedIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[100],
        backgroundColor: Colors.amber,
        currentIndex: _selectedIndex,
        onTap: (value) {
         _onItemTapped(value);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: _widgetOptions[_selectedIndex].title,
              backgroundColor: _widgetOptions[_selectedIndex].color),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: _widgetOptions[_selectedIndex].title,
              backgroundColor: _widgetOptions[_selectedIndex].color),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: _widgetOptions[_selectedIndex].title,
              backgroundColor: _widgetOptions[_selectedIndex].color),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_sharp),
              label: _widgetOptions[_selectedIndex].title,
              backgroundColor: _widgetOptions[_selectedIndex].color)
        ],
      ),

    );
  }
}
