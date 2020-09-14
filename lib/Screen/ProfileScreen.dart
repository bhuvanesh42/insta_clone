import 'package:flutter/material.dart';
import 'package:insta_clone/Models/global.dart';
import 'package:insta_clone/Models/post.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'bhuvan_tn_42',
          style: textStyleBold,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(
                    height: MediaQuery.of(context).size.height - 168),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 250,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                height: 80,
                                width: 80,
                                child: CircleAvatar(
                                  backgroundImage: user.profilepic,
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 45, right: 30),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              '129',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text('posts')
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 40),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              '129K',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text('followers')
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 20),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              '129',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text('following')
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.blue,
                                        ),
                                        margin: EdgeInsets.all(10),
                                        width: 120,
                                        height: 30,
                                        child: FlatButton(
                                          child: Text(
                                            'Contact',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        height: 30,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            border: Border.all(
                                                width: 1,
                                                color: Color(0xFFE7E7E7))),
                                        child: FlatButton(
                                          child: Text('Edit Profile'),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    user.username,
                                    style: textStyleBold,
                                  ),
                                  Text("I am a profile on instagram"),
                                  InkWell(
                                      child: new Text('my instagram'),
                                      onTap: () => launch(
                                          'https://www.instagram.com/bhuvan_tn_42/')),
                                ],
                              ),
                              Container()
                            ],
                          )
                        ],
                      ),
                      color: Colors.white,
                    ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.blue,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        children: getPosts(),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  List<Widget> getPosts() {
    List<Widget> postRows = [];
    List<Widget> posts = [];
    int counter = 0;
    for (Post post in userPosts) {
      double marginLeft = 2;
      if (counter == 3) {
        marginLeft = 0;
      } else if (counter == 0) {
        marginLeft = 0;
      }
      posts.add(getPost(post, marginLeft));
      if (counter == 2) {
        postRows.add(Container(
          child: Row(
            children: posts,
          ),
        ));
        posts = [];
        counter = 0;
      } else {
        counter++;
      }
    }
    if (posts.length > 0) {
      postRows.add(Container(
        child: Row(
          children: posts,
        ),
      ));
    }
    return postRows;
  }

  Widget getPost(Post post, double margin) {
    return Container(
      margin: EdgeInsets.only(left: margin, bottom: 2),
      height: 125,
      width: 123.5,
      decoration: BoxDecoration(
          image: DecorationImage(image: post.image, fit: BoxFit.fill)),
    );
  }
}
