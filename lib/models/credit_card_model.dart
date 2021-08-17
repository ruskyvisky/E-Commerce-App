import 'dart:convert';

class CreditCard{



List<CreditCard> creditCardFromJson(String str) =>
    List<CreditCard>.from(json.decode(str).map((x) => x.fromJson(x)));

String creditCardToJson(List<CreditCard> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


  final String ccnumber;
  final String cvv;
  final String sktt;
  final String cardownername;

  CreditCard({required this.ccnumber, required this.cvv, required this.sktt, required this.cardownername});

  factory CreditCard.fromJson(Map<String, dynamic> json) => CreditCard(
    cardownername: json["cardownername"],
    ccnumber: json["ccnumber"],
    cvv: json["cvv"],
    sktt: json["sktt"],
  );
  
Map<String, dynamic> toJson() => {

  "cardownername": cardownername,
  "ccnumber" : ccnumber,
  "cvv" : cvv,
  "sktt" : sktt,
};
  
}