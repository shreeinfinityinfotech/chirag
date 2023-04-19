import 'package:flutter/material.dart';



void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  final numberGetController = TextEditingController();
  int totlaCreateTextview = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "textview To Create TestBox",
      home:Scaffold(
          // resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text("textview To Create TestBox"),
          ),
          body: Column(
            children: [
              TextField(
                  keyboardType: TextInputType.number,
                  controller: numberGetController,
                  decoration: InputDecoration(hintText: "enter number")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      totlaCreateTextview = int.parse(numberGetController.text);
                      numberGetController.clear();
                    });
                  },
                  child: Text("Create Text Box")),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: totlaCreateTextview,
                  itemBuilder: (context, index) {
                  return TextField(
                      decoration: InputDecoration(hintText: "textBox of ${index+1}"),
                    );
                  },
                ),
              )
            ],
          ),
      ),
    );
  }

}



