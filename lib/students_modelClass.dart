class StudentsData {
  List<Data>? data;

  StudentsData({this.data});

  StudentsData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? admissionNo;
  String? studentame;
  int? mobilenumber;
  String? classname;
  String? section;

  Data(
      {this.admissionNo,
      this.studentame,
      this.mobilenumber,
      this.classname,
      this.section});

  Data.fromJson(Map<String, dynamic> json) {
    admissionNo = json['AdmissionNo'];
    studentame = json['Studentame'];
    mobilenumber = json['Mobilenumber'];
    classname = json['Classname'];
    section = json['Section'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AdmissionNo'] = this.admissionNo;
    data['Studentame'] = this.studentame;
    data['Mobilenumber'] = this.mobilenumber;
    data['Classname'] = this.classname;
    data['Section'] = this.section;
    return data;
  }
}
