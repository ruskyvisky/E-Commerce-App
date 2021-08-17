import 'package:blood_groups_project/Screens/categorylistpage.dart';
import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numan Ticaret"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 15, 150, 15),
                  child: Text(
                    "Kategoriler",
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CategoryListPage()),
            );
                    },
                    child: Text(
                      "Hepsini gör",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        CatsWidget(
                          kategoryisim: 'Kadın',
                          resimurl: "assets/cats/womancat.jpg",
                        ),
                        CatsWidget(
                            kategoryisim: "Erkek",
                            resimurl: "assets/cats/mancat.jpg"),
                        CatsWidget(
                            kategoryisim: "Çocuk",
                            resimurl: "assets/cats/kidcat.jpg"),
                        CatsWidget(
                            kategoryisim: "Takılar",
                            resimurl: "assets/cats/jewelrycat.jpg"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
         
         
        ],
      ),
      drawer: Drawer(),
    );
  }
}

class CatsWidget extends StatelessWidget {
  const CatsWidget({
    Key? key,
    required this.resimurl,
    required this.kategoryisim,
  }) : super(key: key);

  final String resimurl;
  final String kategoryisim;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Column(
            children: [
              Container(
                child: CircleAvatar(
                    radius: 45, backgroundImage: AssetImage(resimurl)),
              ),
              Text(
                kategoryisim,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
