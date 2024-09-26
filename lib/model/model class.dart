class FeaturedModel {
  String Views;
  String  verified;
  String  Salarytype;
  String imgurl;
  String Salary;
  String Posted;
  String applidead;
  String jobTittle;
  String companyName;
  String jobdescribtion;
  String jobcategory;
  String placeposting;
  String qualification;
  String fieldstudy;
  String employtype;
  String expericence;
  int _Availableslot;

  int get Availableslot => _Availableslot;

  set Availableslot(int value) {
    _Availableslot = value;
  }

  FeaturedModel({
    required this.Views,
    required this.verified,
    required this.Salarytype,
    required this.imgurl,
    required this.Salary,
    required this.companyName,
    required this.Posted,
    required this.applidead,
    required this.jobTittle,
    required this.jobdescribtion,
    required this.jobcategory,
    required this.placeposting,
    required this.qualification,
    required this.fieldstudy,
    required this.employtype,
    required this.expericence,
    required int Availableslot,

  }) : _Availableslot = Availableslot;
}

class RecomendedModel {
  String imgUrl;
  String jobTitle;
  String description;
  String salary;
  String location;
  String experience;
  String fieldstudy;
  String employtype;
  bool isSaved;
  String company;

  RecomendedModel(
      {required this.imgUrl,
        required this.jobTitle,
        required this.description,
        required this.salary,
        required this.location,
        required this.fieldstudy,
        required this.employtype,
        required this.experience,
        this.isSaved = false,
        required this.company});
}

class Recommended {
  String imgUrl;
  String jobTitle;
  String description;
  String fieldstudy;
  String employtype;
  String salary;
  String location;
  String experience;
  bool isSaved;
  String company;

  Recommended(
      {required this.imgUrl,
        required this.jobTitle,
        required this.description,
        required this.salary,
        required this.experience,
        required this.fieldstudy,
        required this.employtype,
        required this.location,
        this.isSaved = false,
        required this.company});
}

class Notification {
  final String title;
  final String message;
  final String timestamp;

  Notification(
      {required this.title, required this.message, required this.timestamp});
}

class User {
  String email;
  String password;

  User({required this.email, required this.password});
}