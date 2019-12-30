import 'package:flutter/material.dart';

//widget
import 'package:counterapp/src/pages/counter_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(child: CounterPage()),
    );
  }
}
