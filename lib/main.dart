import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Dark
//  final brightness = Brightness.dark;
  // Light
  final brightness = Brightness.light;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        brightness: brightness,
        canvasColor: brightness == Brightness.dark
            ? Color(0xFF282C39)
            : Color(0xFFFAFAFA),
        primaryColor: brightness == Brightness.dark
            ? Color(0xFF1B1E28)
            : Color(0xFFFFFFFF),
      ),
      home: HomeScreen(),
    );
  }
}
