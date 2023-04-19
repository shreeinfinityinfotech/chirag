import 'package:flutter/material.dart';
import 'package:untitled/navigation-routing/model/user.dart';
import 'package:untitled/navigation-routing/thirdScreen.dart';
class SecondScreen extends StatefulWidget {
  //
  // String name;
  // int age ;
  // SecondScreen(this.name,this.age);
 User user;

 SecondScreen(this.user);

  @override
  State<SecondScreen> createState() => _SecondScreenState(user);
}

class _SecondScreenState extends State<SecondScreen> {
  // String name ;
  // int age;
  // _SecondScreenState(this.name,this.age);

  User user;
  _SecondScreenState(this.user);

  @override
  Widget build(BuildContext context) {
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdScreen(user),),);
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
