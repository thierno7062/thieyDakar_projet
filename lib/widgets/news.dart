import 'package:flutter/material.dart';

class News extends StatelessWidget {
  final bool horizontal;
  bool isDark = false;

  News({this.horizontal = true});

  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return horizontal ? _getHorizontalLayout() : _getVerticalLayout();
  }

  Widget _getHorizontalLayout() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.all(5),
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
        color: isDark ? Colors.black : Colors.white,
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
              padding: EdgeInsets.all(6.0),
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
          Expanded(
            child: Container(
              height: 120,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: _getTitle(
                          'Aides quietly stunned by Trump\'s respectful handling of Kavanaugh accuser'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: isDark ? Colors.blue : Color(0xffCCCBDA),
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              '12 May 2019',
                              style: TextStyle(
                                color: Color(0xff7F7E96),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.bookmark,
                        color: Color(0xffCCCBDA),
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getVerticalLayout() {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      //padding: EdgeInsets.all(5),
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
      child: Column(
        children: <Widget>[
          Container(
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
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.all(6.0),
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
          Expanded(
            child: Container(
              height: 120.0,
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _getTitle(
                      'Aides quietly stunned by Trump\'s respectful handling of Kavanaugh accuser'),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        color: Color(0xffCCCBDA),
                        size: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          '12 Maj 2019',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff7F7E96),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getTitle(text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: Color(0xff1B1E28),
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
