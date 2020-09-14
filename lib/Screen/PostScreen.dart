import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/lottie/programming.json');
  }
}