import 'package:flutter/material.dart';
import '../widgets/news.dart';
import '../widgets/comment.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is home'),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10.0),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        //childAspectRatio: 0.77, // height of grid item
        children: <Widget>[
          News(
            horizontal: false,
          ),
          News(
            horizontal: false,
          ),
          News(
            horizontal: false,
          ),
          News(
            horizontal: false,
          ),
        ],
      ),
    );
  }
}
