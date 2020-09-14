import 'package:flutter/material.dart';
import 'package:insta_clone/Screen/HomeScreen.dart';
import 'package:insta_clone/Screen/NotificationScreen.dart';
import 'package:insta_clone/Screen/PostScreen.dart';
import 'package:insta_clone/Screen/ProfileScreen.dart';
import 'package:insta_clone/Screen/SearchScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePageState(),
    );
  }
}

class HomePageState extends StatefulWidget {
  @override
  _HomePageStateState createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        body: TabBarView(children: pages),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.live_tv),
              ),
              Tab(
                icon: Icon(Icons.add_circle_outline),
              ),
              Tab(
                icon: Icon(Icons.favorite_border),
              ),
              Tab(
                icon: Icon(Icons.person_outline),
              )
            ],
            unselectedLabelColor: Colors.black,
            labelColor: Colors.blue,
            indicatorColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
