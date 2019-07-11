import 'package:flutter/material.dart';
import '../widgets/news.dart';
import '../widgets/comment.dart';
import '../widgets/slider_news.dart';
import '../widgets/categories.dart';
import '../widgets/no_data.dart';
import '../widgets/about_app.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return _tabs();

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
      body: Comment(),
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Text('Header'),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              ListTile(
                title: Text('Asdf'),
              )
            ],
          )
        ],
      )),
    );
  }

  _tabs() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
          bottom: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: 'Long Name 1',
              ),
              Tab(
                text: 'Long Name 2',
              ),
              Tab(
                text: 'Long Name 3',
              ),
              Tab(
                text: 'Long Name 4',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.check_box),
            Icon(Icons.check),
            Icon(Icons.check_box_outline_blank),
            Icon(Icons.chat_bubble),
          ],
        ),
      ),
    );
  }
}
