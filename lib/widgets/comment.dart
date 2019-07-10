import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/hulk.png'),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        child: Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF1B1E28),
                          ),
                          // textAlign: TextAlign.start,
                        ),
                        padding: EdgeInsets.only(right: 10),
                      ),
                      Text(
                        '12 Maj 2019.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF7F7E96),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Chatting with the barrista at my favourite Crouch End café this morning stirred a thought. Nigel Slater\'s dumbing-down of cookery means he rarely uses any of the interesting ingredients in my local deli. The left needs to unite and stop letting the neo-fascists talk down to us.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF7F7E96),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
