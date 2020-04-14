import 'package:deco_news/helpers/deco_localizations.dart';
import 'package:flutter/material.dart';

class SearchError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(width: double.infinity,),

        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Icon(
            Icons.error,
            color: Color(0xFFb3bbbf),
            size: 120,
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            DecoLocalizations.of(context).localizedString("search_error_something_went_wrong"),
            style: TextStyle(
              fontSize: 14,
              color: isDark ? Colors.white : Color(0xff1B1E28),
            ),
          ),
        ),

        Text(
          DecoLocalizations.of(context).localizedString("search_error_please_try_again"),
          style: TextStyle(
            fontSize: 14,
            color: isDark ? Colors.white : Color(0xff1B1E28),
          ),
        ),
      ],
    );
  }
}
