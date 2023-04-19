import 'package:flutter/material.dart';
import '../model/student.dart';
import '../routes/app_route.dart';

class SecondScreenRoute extends StatefulWidget {
  const SecondScreenRoute({Key? key}) : super(key: key);
   @override
  State<SecondScreenRoute> createState() => _SecondScreenRouteState();
}

class _SecondScreenRouteState extends State<SecondScreenRoute> {
  final _addressController = TextEditingController();
  String qulification = '';
  updateQulification(String value){
    setState(() {
      qulification = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    StudentInfo studentInfo = ModalRoute.of(context)?.settings.arguments as StudentInfo;
    return Scaffold(
        appBar: AppBar(
          title: const Text('SecondScreen'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _addressController,
                decoration: const InputDecoration(
                  hintText: "Please Enter Address"
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RadioListTile(title: const Text("male"),value: "Male", groupValue: qulification, onChanged: (value) => updateQulification(value.toString()),),
              RadioListTile(title:const Text("female"),value: "female", groupValue: qulification, onChanged: (value) => updateQulification(value.toString()),),
              ElevatedButton(onPressed: (){
                studentInfo.studentAddress = _addressController.text.trim();
                studentInfo.studentGender = qulification;
                Navigator.pushNamed(context, Approute.thirdScreen,arguments: studentInfo);
                }, child: const Text("Next To ThirdScreen"))
            ],
          ),
        ),
    );
  }
}
