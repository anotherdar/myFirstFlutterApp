import 'package:flutter/material.dart';

//widget
import 'package:counterapp/src/pages/home_pages.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(child: HomePage()),
    );
  }
}
