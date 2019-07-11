import 'package:flutter/material.dart';
import '../widgets/news.dart';
import '../widgets/comment.dart';
import '../widgets/slider_news.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Deco News'.toUpperCase(),
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            // Comment(),
            // News(),
            // SliderNews(),
          ],
        ),
      ),
    );
  }
}
