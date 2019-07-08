import 'package:flutter/material.dart';
import '../widgets/news.dart';

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

          ],
        ),
      ),
    );
  }
}