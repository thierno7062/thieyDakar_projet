import 'package:flutter/material.dart';

class NoData extends StatelessWidget {
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Image.asset('images/deco_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Text(
              'Uups, no data!',
              style: TextStyle(
                color: isDark ? Colors.white : Color(0xFF1B1E28),
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            width: 220.0,
            child: Text(
              'Add something to bookmarks by taping on bookmark icon',
              style: TextStyle(
                color: Color(0xFF7F7E96),
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
