import 'package:flutter/material.dart';
import 'package:untitled/assignment/navigationroutermulipatlvaluepass/model/studentData.dart';

class FetchDataDetails extends StatefulWidget {
  List<StudentData> _studentData;

  FetchDataDetails(this._studentData);

  @override
  State<FetchDataDetails> createState() => _FetchDataDetailsState(_studentData);
}

class _FetchDataDetailsState extends State<FetchDataDetails> {
  List<StudentData> _studentData;

  _FetchDataDetailsState(this._studentData);
  @override
  Widget build(BuildContext context) {
    // StudentData _studentData = ModalRoute.of(context)?.settings.arguments as StudentData ;
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Fetch Screen'),
      ),
      body: _studentData.length == 0
          ? Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text("no Data Found",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(foreground: Paint()..color = Colors.red)),
                ),
              ),
            )
          : GridView.builder(
        itemCount: _studentData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.amber[900-(index*100)],
              child: Text('''
              student id  : ${_studentData[index].studentId}  
              First Name :${_studentData[index].studentFirstName}
              Last Name :${_studentData[index].studentLastName}
              Address : ${_studentData[index].studentAddress}
           '''),
            );
          },
      ),
    );
  }
}
