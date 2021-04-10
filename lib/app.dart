import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waiterless_cafe_app/pages/menu_page.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        unselectedWidgetColor: Color(0xFFEB5757),
        toggleableActiveColor: Color(0xFFEB5757),
      ),
      home: MenuPage(),
    );
  }
}