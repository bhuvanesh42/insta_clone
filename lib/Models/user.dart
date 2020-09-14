import 'package:flutter/material.dart';
import 'package:insta_clone/Models/post.dart';

class User {
  String username;
  List<Post> posts;
  AssetImage profilepic;
  List<User> followers;
  List<User> following;
  List<Post> saved;
  bool hasStroy;

  User(
    this.username,
    this.profilepic,
    
    
    this.followers,
    this.following,
    this.posts,
    this.saved,
    this.hasStroy,
  );
}
