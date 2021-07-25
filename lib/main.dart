import 'package:flutter/material.dart';
import 'package:flutter_performance/example2/optimal_example_page_2.dart';
import 'package:flutter_performance/home_page.dart';

import 'example1/example_page1.dart';
import 'example1/example_page_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
