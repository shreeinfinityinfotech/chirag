import 'package:flutter/material.dart';
import 'package:untitled/assignment/navigationroutermulipatlvaluepass/fetchdatadetailsrouter/fetchDataDetailsRouter.dart';
import 'package:untitled/assignment/navigationroutermulipatlvaluepass/model/studentData.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<StudentData> studentdata = [];
  List<StudentData> selectedStudentList = [];

  @override
  void initState() {
    studentdata.add(StudentData(
        studentFirstName: 'chirag',
        studentAddress: 'surat',
        studentId: 1,
        studentLastName: 'bambhroliya'));
    studentdata.add(StudentData(
        studentFirstName: 'vadi',
        studentAddress: 'ahemdabad',
        studentId: 2,
        studentLastName: 'malani'));
    studentdata.add(StudentData(
        studentFirstName: 'vivek',
        studentAddress: 'botad',
        studentId: 3,
        studentLastName: 'bhaat'));
    studentdata.add(StudentData(
        studentFirstName: 'Rahul',
        studentAddress: 'borad',
        studentId: 4,
        studentLastName: 'borad'));
    studentdata.add(StudentData(
        studentFirstName: 'Rahul',
        studentAddress: 'borad',
        studentId: 5,
        studentLastName: 'borad'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MultiplaeValuePass In router Example'),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.red),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: studentdata.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('${studentdata[index].studentFirstName}'),
                  value: studentdata[index].isCheck,
                  onChanged: (bool? value) {
                    setState(() {
                      studentdata[index].isCheck = value!;
                    });
                    if (value!) {
                      selectedStudentList.add(studentdata[index]);
                    } else {
                      selectedStudentList.removeWhere((element) =>
                          element.studentId == studentdata[index].studentId);
                    }
                  },
                  secondary: Container(
                      height: 50, width: 50, child: Icon(Icons.account_box)),
                );
              },
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 100)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FetchDataDetails(selectedStudentList),
                      ));
                },
                child: const Text("next"))
          ],
        ),
      ),
    );
  }
}
