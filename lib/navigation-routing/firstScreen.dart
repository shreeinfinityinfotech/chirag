
import 'package:flutter/material.dart';
import 'package:untitled/navigation-routing/model/user.dart';

import 'SecondScreen.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Text("First Screen"),
              SizedBox(height: 20,),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(hintText: "enter Name"),

              ),
              SizedBox(height: 20,),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(hintText: "enter Age"),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                var name = _nameController.text;
                int age = _ageController.text.isEmpty ? 0 : int.parse(_ageController.text.toString());
                User user = User(name, age);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(user),),);
                _nameController.clear();
                _ageController.clear();
              }, child: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}



