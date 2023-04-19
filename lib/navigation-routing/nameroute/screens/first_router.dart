import 'package:flutter/material.dart';
import 'package:untitled/navigation-routing/nameroute/routernamelist.dart';
import 'package:untitled/navigation-routing/nameroute/routes/routes.dart';

import '../../model/user.dart';
class FirstRouter extends StatefulWidget {
  const FirstRouter({Key? key}) : super(key: key);

  @override
  State<FirstRouter> createState() => _FirstRouterState();
}

class _FirstRouterState extends State<FirstRouter> {
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
                String name = _nameController.text;
                int age =  _ageController.text.isEmpty? 0 : int.parse(_ageController.text);
                User user = User(name,age);

                Navigator.pushNamed(context, Routes.secondRoute,arguments: user);
              }, child: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}
