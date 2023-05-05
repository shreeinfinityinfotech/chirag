import 'package:flutter/material.dart';

void main() => runApp(DailgodExampleByChirag());

class DailgodExampleByChirag extends StatelessWidget {
  const DailgodExampleByChirag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Color(0xff6750a4),useMaterial3: false),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
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
        title: Text("DailogMenu Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialodAlert(context);
                },
                child: Text("Alert Dialog")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: ()  async {
                  var result = await showSimpleDialog(context);
                  print(result);
                },
                child: Text("Simple Dialog"))
          ],
        ),
      ),
    );
  }

  void showDialodAlert(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Alert Dialog"),
            content:
                Text('are you sure you want to logout from this application?'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancel")),
              TextButton(onPressed: () {}, child: Text("Logout"))
            ],
          );
        });
  }

  showSimpleDialog(BuildContext context) {
   return showDialog(
        context: context,
        builder: (context) {
          return Theme(
            data:
            Theme.of(context).copyWith(dialogBackgroundColor: Color(0xff6750a4)),
            child: SimpleDialog(
              titleTextStyle: TextStyle(color: Colors.white),
              title: Text("Select Color"),
              children: [
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context,'green');
                  },
                  child: Text("Green",style: TextStyle(color: Colors.white),),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context,"Red");
                  },
                  child: Text("Red",style: TextStyle(color: Colors.white),),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context,"Blue");
                  },
                  child: Text("Blue",style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          );
        });
  }
}
