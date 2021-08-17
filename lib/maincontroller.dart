import 'package:blood_groups_project/Screens/aramapage.dart';
import 'package:blood_groups_project/Screens/categorylistpage.dart';
import 'package:blood_groups_project/Screens/homepage.dart';
import 'package:blood_groups_project/Screens/profilepage.dart';
import "package:flutter/material.dart";

class MainController extends StatefulWidget {
  const MainController({ Key? key }) : super(key: key);

  @override
  _MainControllerState createState() => _MainControllerState();
}

class _MainControllerState extends State<MainController> {
   int _selectedPage = 0;
  List<Widget> pageList = <Widget>[];
@override
  void initState() {
    pageList.add(HomePage());
    pageList.add(SearchPage());
    pageList.add(ProfilePage());

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: pageList,
        index: _selectedPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
        label: "Anasayfa"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),

            label: "Arama",
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
        label: "Profilim"
          ),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ), 
    );
  }
    void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}