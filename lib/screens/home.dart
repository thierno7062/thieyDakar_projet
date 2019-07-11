import 'package:flutter/material.dart';
import '../widgets/news.dart';
import '../widgets/comment.dart';
import '../widgets/slider_news.dart';
import '../widgets/categories.dart';
import '../widgets/no_data.dart';
import '../widgets/about_app.dart';

class HomeScreen extends StatelessWidget {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
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
//            DrawerHeader(
//              child: Image.asset('images/deco_logo.png'),
//            ),
            Container(
              padding: EdgeInsets.only(top: 60.0, bottom: 120.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 15.0),
                    width: 60.0,
                    child: Image.asset('images/deco_logo.png'),
                  ),
                  Column(
                    children: <Widget>[
                      Text('Deco News'),
                      Text('WP + Ionic App'),
                    ],
                  ),
                ],
              ),
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
        ),
      ),
    );
  }

  _tabs() {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 20),
            labelColor: isDark ? Colors.white : Color(0xFF1B1E28),
            indicatorColor: isDark ? Colors.white : Color(0xFF1B1E28),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'Technology',
              ),
              Tab(
                text: 'Sport',
              ),
              Tab(
                text: 'Travel',
              ),
              Tab(
                text: 'Style',
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
            Icon(Icons.timer),
          ],
        ),
      ),
    );
  }
}
