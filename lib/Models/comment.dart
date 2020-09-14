import 'package:insta_clone/Models/user.dart';

class Comment {
  String comment;
  User user;
  DateTime dateofcomment;
  bool isliked;
  Comment(
    this.user,
    this.comment,
    this.dateofcomment,
    this.isliked,
  );
}
