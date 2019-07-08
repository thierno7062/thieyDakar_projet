import 'package:flutter/material.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(3),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
              image: DecorationImage(
                image: AssetImage('images/newBack.png'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffCB0000),
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              child: Text(
                'Politics'.toUpperCase(),
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
