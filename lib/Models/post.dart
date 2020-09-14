import 'package:flutter/cupertino.dart';
import 'package:insta_clone/Models/comment.dart';
import 'package:insta_clone/Models/user.dart';

class Post {
  AssetImage image;
  String description;
  User user;
  List<User> likes;
  List<Comment> comment;
  DateTime dateTime;
  bool islike;
  bool issaved;
  Post(
    this.image,
    this.user,
    this.description,
    this.dateTime,
    this.likes,
    this.comment,
    this.islike,
    this.issaved,
  );
}
