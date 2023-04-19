
class StudentData{
  int? studentId;
  String? studentFirstName;
  String? studentLastName;
  String? studentAddress;
  bool isCheck = false;

  StudentData({this.studentId, this.studentFirstName, this.studentLastName,
      this.studentAddress});

  @override
  String toString() {
    // TODO: implement toString
    return "($studentId,$studentFirstName,$studentLastName,$studentAddress)";

  }
}
