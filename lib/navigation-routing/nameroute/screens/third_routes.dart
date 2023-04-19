import 'package:flutter/material.dart';
import 'package:untitled/navigation-routing/model/user.dart';
class third_Route extends StatefulWidget {
  User user;

  third_Route(this.user);

  @override
  State<third_Route> createState() => _third_RouteState(user);
}

class _third_RouteState extends State<third_Route> {
  User user;

  _third_RouteState(this.user);

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
