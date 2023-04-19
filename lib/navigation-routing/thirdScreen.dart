import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/navigation-routing/model/user.dart';


class ThirdScreen extends StatefulWidget {
  User user;

  ThirdScreen(this.user);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState(user);
}

class _ThirdScreenState extends State<ThirdScreen> {
User user;

_ThirdScreenState(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Column(
        children: [
          Text('''
          name:${user.name}
          age:${user.age}
          '''),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("back To Second Screen"))
        ],
      ),
    ) ;
  }
}
