import 'package:flutter/material.dart';
import 'package:untitled/navigation-routing/model/user.dart';
import 'package:untitled/navigation-routing/nameroute/routes/routes.dart';
class Second_route extends StatefulWidget {
 User user;
 Second_route(this.user);

  @override
  State<Second_route> createState() => _Second_routeState(user);
}

class _Second_routeState extends State<Second_route> {

  User user;
  _Second_routeState(this.user);

  @override
  Widget build(BuildContext context) {
    // User user =  ModalRoute.of(context)?.settings.arguments as User;
    // print("routername: ${ModalRoute.of(context)?.settings.name}");
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Scree'),
      ),
      body: Column(
        children: [
          Text("Second Screen"),
          SizedBox(height: 20,),
          Text('''
          Name:${user.name}
          age:${user.age}
           '''),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, Routes.thirdRoute,arguments: user);
          }, child: Text('Next')),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
                Navigator.pop(context);
          }, child: Text("back to First "))
        ],
      ),
    );
  }
}
