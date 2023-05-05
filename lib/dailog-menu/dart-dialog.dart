import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Alert Dialog',
      home: DialogPage(),
    );
  }
}

class DialogPage extends StatelessWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Alert Dialog'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showAlertDialog(context);
            },
            child: Text('Alert Dialog'),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () async {
              var result = await showSimpleDialog(context);
              print(result);
            },
            child: Text('Simple Dialog'),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () async {
              showCustomDialog(context);
            },
            child: Text('Custom Dialog'),
          ),
        ],
      )),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text('Logout'),
          content:
              Text('are you sure you want to logout from this application?'),
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

  showSimpleDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Select Color'),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Green');
              },
              child: Text('Green'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Red');
              },
              child: Text('Red'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Blue');
              },
              child: Text('Blue'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Black');
              },
              child: Text('Black'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'White');
              },
              child: Text('White'),
            )
          ],
        );
      },
    );
  }

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rate us',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                RatingBar.builder(
                  itemCount: 5,
                  allowHalfRating: true,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, index) {
                    return Icon(
                      Icons.star,
                      color: Colors.amber,
                    );
                  },
                  onRatingUpdate: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
