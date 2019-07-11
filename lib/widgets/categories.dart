import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            blurRadius: 5,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3)),
            color: isDark ? Color(0xFF1B1E28) : Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Business',
                style: TextStyle(
                  color: isDark ? Colors.white : Color(0xFF1B1E28),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '42 Posts',
                style: TextStyle(
                  color: Color(0xFF7F7E96),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
