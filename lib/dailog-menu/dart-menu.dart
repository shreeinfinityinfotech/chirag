import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopupMenu Widget',
      home: PopupMenuExample(),
    );
  }
}

class PopupMenuExample extends StatelessWidget {
  const PopupMenuExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case 0:
                  // navigate to profile
                  showAlertDialog(context, 'profile', 'profile');
                  break;
                case 1:
                  // navigate to settings
                  break;
                case 2:
                  showAlertDialog(context, 'Logout',
                      'are you sure you want to logout from this application?');
                  break;
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('Profile'),
                  value: 0,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      /*Icon(Icons.settings, color: Colors.red,),*/
                      Text('Settings')
                    ],
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text('Logout'),
                  value: 2,
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}
