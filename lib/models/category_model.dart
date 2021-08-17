import 'dart:convert';
class Category {

List<Category> catFromJson(String str) =>
    List<Category>.from(json.decode(str).map((x) => x.fromJson(x)));

String catToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
  
  
  String categoryname;
  String categoryaciklama;
 
 
Category({
  required this.categoryaciklama,required this.categoryname
});

factory Category.fromJson(Map<String, dynamic> json) => Category(
  categoryaciklama: json["categoryaciklama"],
  categoryname: json["categoryname"],
);

Map<String,dynamic> toJson() =>{
  "categoryaciklama" : categoryaciklama,
  "categoryname" : categoryname,
};
}