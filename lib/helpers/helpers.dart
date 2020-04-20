import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../config.dart';

/// Show loading message
void showLoadingDialog(context) {
  bool isDark = Theme.of(context).brightness == Brightness.dark;

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => AlertDialog(
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(isDark ? Colors.white : Color(0xFF1B1E28))
          ),

          Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Text(
              'Please wait...',
              style: TextStyle(
                color: isDark ? Colors.white : Color(0xFF1B1E28),
                fontSize: 14,
                height: 16 / 14
              ),
            ),
          )
        ],
      ),
    ),
  );
}

/// Show error messages
void showErrorDialog(context, String title, String message) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        FlatButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
  );
}


///Adds ad widget to the bottom of the screen in case facebook ads are enabled
void addAdWidget({BuildContext context}){
  if(Config.facebookAdsEnabled){

    double height = 50.0;

    if(Config.facebookAdType == 'banner' || Config.facebookAdType == 'native banner'){
      if(Config.facebookAdSize == 'small')
        height = 50.0;
      else if(Config.facebookAdSize == 'medium')
        height = 90.0;
      else if(Config.facebookAdSize == 'large')
        height = 250.0;
    }else if(Config.facebookAdType == 'native'){
      if(Config.facebookAdSize == 'small')
        height = 50.0;
      else if(Config.facebookAdSize == 'medium')
        height = 100.0;
      else if(Config.facebookAdSize == 'large')
        height = 120.0;
    }

    Overlay.of(context).insert(
      OverlayEntry(
        builder: (context){
          if(Config.facebookAdPosition == 'bottom')
            return Positioned(
              child: SizedBox(
                height: height,
                width: 320.0,
                child: Material(
                  color: Colors.red,
                ),
              ),
              bottom: MediaQuery.of(context).padding.bottom,
              left: 0,
              height: height,
              width: MediaQuery.of(context).size.width,
            );
          else if(Config.facebookAdPosition == 'top')
            return Positioned(
              child: SizedBox(
                height: height,
                width: 320.0,
                child: Material(
                  color: Colors.red,
                ),
              ),
              top: MediaQuery.of(context).padding.top,
              left: 0,
              height: height,
              width: MediaQuery.of(context).size.width,
            );
          else
            return Container(
              width: 0,
              height: 0,
            );
        }
      )
    );
  }

}

/// Adds ad padding to the screen in case the facebook ads are enabled
EdgeInsets adPadding({BuildContext context, EdgeInsets defaultPadding}){
  if(Config.facebookAdsEnabled) {
    double height = 50.0;
    EdgeInsets size;
    if (Config.facebookAdSize == 'small')
      height = 50.0;
    else if (Config.facebookAdSize == 'medium')
      height = 90.0;
    else if (Config.facebookAdSize == 'large')
      height = 250.0;

    if(defaultPadding==null)defaultPadding=EdgeInsets.all(0);

    if (Config.facebookAdPosition == 'bottom')
      size = EdgeInsets.only(
          bottom: height+defaultPadding?.bottom,
          top: defaultPadding?.top,
          right: defaultPadding?.right,
          left: defaultPadding?.left);
    else if(Config.facebookAdPosition == 'top')
      size = EdgeInsets.only(
          bottom: defaultPadding?.bottom,
          top: height+defaultPadding?.top,
          right: defaultPadding?.right,
          left: defaultPadding?.left);

    return size;
  }

  return defaultPadding??EdgeInsets.all(0);
}

