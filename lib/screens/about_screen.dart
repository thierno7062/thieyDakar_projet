import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../helpers/deco_localizations.dart';
import '../widgets/deco_appbar.dart';
import '../widgets/deco_news_drawer.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: DecoNewsAppBar(),
      drawer: DecoNewsDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 30.0),
              child: Image.asset('images/deco_logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                'Deco News',
                style: TextStyle(
                  color: isDark ? Colors.white : Color(0xFF1B1E28),
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              width: 220.0,
              padding: EdgeInsets.only(
                bottom: 60.0,
              ),
              child: Text(
                'WordPress to Flutter News App',
                style: TextStyle(
                  color: Color(0xFF7F7E96),
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: isDark ? Color(0xFF1B1E28) : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          DecoLocalizations.of(context).localizedString("about_amazing_list_of_features"),
                          style: TextStyle(
                            color: isDark ? Colors.white : Color(0xFF1B1E28),
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_box,
                          color: Color(0xFFCCCBDA),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            DecoLocalizations.of(context).localizedString("about_no_need_for_development_skills"),
                            style: TextStyle(
                              color: isDark ? Colors.white : Color(0xFF1B1E28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_box,
                          color: Color(0xFFCCCBDA),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            DecoLocalizations.of(context).localizedString("about_wordpress_as_backend"),
                            style: TextStyle(
                              color: isDark ? Colors.white : Color(0xFF1B1E28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_box,
                          color: Color(0xFFCCCBDA),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            DecoLocalizations.of(context).localizedString("about_amazing_docs"),
                            style: TextStyle(
                              color: isDark ? Colors.white : Color(0xFF1B1E28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_box,
                          color: Color(0xFFCCCBDA),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            DecoLocalizations.of(context).localizedString("about_firebased_pushed_notifications"),
                            style: TextStyle(
                              color: isDark ? Colors.white : Color(0xFF1B1E28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_box,
                          color: Color(0xFFCCCBDA),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            DecoLocalizations.of(context).localizedString("about_admob_integration"),
                            style: TextStyle(
                              color: isDark ? Colors.white : Color(0xFF1B1E28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_box,
                          color: Color(0xFFCCCBDA),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            DecoLocalizations.of(context).localizedString("about_light_and_dark_theme"),
                            style: TextStyle(
                              color: isDark ? Colors.white : Color(0xFF1B1E28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_box,
                          color: Color(0xFFCCCBDA),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            DecoLocalizations.of(context).localizedString("about_rtl"),
                            style: TextStyle(
                              color: isDark ? Colors.white : Color(0xFF1B1E28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_box,
                          color: Color(0xFFCCCBDA),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            DecoLocalizations.of(context).localizedString("about_design_files"),
                            style: TextStyle(
                              color: isDark ? Colors.white : Color(0xFF1B1E28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_box,
                          color: Color(0xFFCCCBDA),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            DecoLocalizations.of(context).localizedString("about_flutter_version"),
                            style: TextStyle(
                              color: isDark ? Colors.white : Color(0xFF1B1E28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_box,
                          color: Color(0xFFCCCBDA),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            DecoLocalizations.of(context).localizedString("about_compatible_with_android_and_ios"),
                            style: TextStyle(
                              color: isDark ? Colors.white : Color(0xFF1B1E28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          width: double.infinity,
          height: 55.0,
          margin: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
          child: RaisedButton(
            onPressed: () async {
              const url = 'https://devspush.com/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
              throw 'Could not launch $url';
              }
            },
            padding: EdgeInsets.all(0),
            color: isDark ? Colors.white : Color(0xFF1B1E28),
            textColor: isDark ? Color(0xFF1B1E28) : Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0)),
            child: Text(DecoLocalizations.of(context).localizedString("purchase_now")),
          ),
        ),
      ),
    );
  }
}
