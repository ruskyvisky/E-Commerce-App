import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => x.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  String userid;
  String username;
  String usersurname;
  String usertel;
  String userpass;
  String userage;

  User(
      {required this.userid,
      required this.userage,
      required this.username,
      required this.userpass,
      required this.usersurname,
      required this.usertel});

  factory User.fromJson(Map<String, dynamic> json) => User(
        userid: json["userid"],
        username: json["username"],
        usersurname: json["usersuname"],
        usertel: json["usertel"],
        userpass: json["userpass"],
        userage: json["userage"],
      );

  Map<String, dynamic> toJson() => {

    "userid" : userid,
    "username" : username,
    "usersurname": username,
    "usertel" : usertel,
    "userpass" : userpass,
    "userage" : userage, 
  };
}
