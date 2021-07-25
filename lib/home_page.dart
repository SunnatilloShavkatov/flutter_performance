import 'package:flutter/material.dart';
import 'package:flutter_performance/example1/example_page_1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int t = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExamplePage1(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            t++;
          });
          print(t);
        },
      ),
    );
  }
}
