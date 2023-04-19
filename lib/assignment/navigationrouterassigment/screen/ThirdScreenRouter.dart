import 'package:flutter/material.dart';
import 'package:untitled/assignment/navigationrouterassigment/routes/app_route.dart';
import '../model/student.dart';

class ThirdScreenRoute extends StatefulWidget {
  const ThirdScreenRoute({Key? key}) : super(key: key);


  @override
  State<ThirdScreenRoute> createState() => _ThirdScreenRouteState();
}
class _ThirdScreenRouteState extends State<ThirdScreenRoute> {

  @override
  Widget build(BuildContext context) {
    StudentInfo studentInfo = ModalRoute.of(context)?.settings.arguments as StudentInfo;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Third Screen'),
        ),
        body: Column(
          children: <Widget>[
            Text('''
            Name:${studentInfo.studentFirstName}
            LastName :${studentInfo.studentLastName}
            gender : ${studentInfo.studentGender}
            address: ${studentInfo.studentAddress}
            '''),
            ElevatedButton(onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, Approute.firstScreen, (route) => false);
            }, child: const Text("Back To 3rd Screen"))
          ],
        ),
     );
  }
}
