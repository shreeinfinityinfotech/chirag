import 'package:flutter/material.dart';
import '../model/student.dart';
import '../routes/app_route.dart';

class FirstScreenRouter extends StatefulWidget {
  const FirstScreenRouter({Key? key}) : super(key: key);

  @override
  State<FirstScreenRouter> createState() => _FirstScreenRouterState();
}

class _FirstScreenRouterState extends State<FirstScreenRouter> {
  final _firstNameController = TextEditingController(), _lastnameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("first Screen"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Text("First Screen",style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal)),
              const SizedBox(height: 20,),
               TextField(
                controller: _firstNameController,
                decoration: const InputDecoration(hintText: "Enter Studet First Name"),
              ),
              const SizedBox(height: 20,),
               TextField(
                controller: _lastnameController,
                decoration: const InputDecoration(hintText: "Enter Studet Last Name"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                String fName = _firstNameController.text.trim();
                String lName = _lastnameController.text.trim();
              StudentInfo  stundetinfo = StudentInfo(studentFirstName: fName,studentLastName:lName);
              Navigator.pushNamed(context, Approute.secondScreen,arguments: stundetinfo);
              }, child: Text("Next to SecondScreen",style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal)),)
            ],
          ),
        ),
      ),
    );
  }
}
