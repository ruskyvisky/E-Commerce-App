import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryListPage extends StatefulWidget {
  const CategoryListPage({Key? key}) : super(key: key);

  @override
  _CategoryListPageState createState() => _CategoryListPageState();
}

FirebaseFirestore firestore = FirebaseFirestore.instance;

class _CategoryListPageState extends State<CategoryListPage> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('kategoriler').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: Column(

                children: [
                  CircularProgressIndicator(),
                  Text("Yükleniyor..."),
                ],
              ),
            );
          }
          return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
          Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return Card(
              child: ListTile(
                
                title: Text(data['categoryname']),
                subtitle: Text(data['categoryaciklama']),
              ),
            );
          }).toList(),
        );
        },
      ),
    );
  }
}
