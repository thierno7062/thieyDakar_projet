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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            News(),
            // Comment(),
          ],
        ),
      ),
    );
  }
}
