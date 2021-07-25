import 'dart:math';

import 'package:flutter/material.dart';

class OptimalExamplePage2 extends StatefulWidget {
  const OptimalExamplePage2({Key? key}) : super(key: key);

  @override
  _OptimalExamplePage2State createState() => _OptimalExamplePage2State();
}

class _OptimalExamplePage2State extends State<OptimalExamplePage2> {
  Color _currentColor = Colors.grey;

  Random _random = new Random();

  void _onPressed() {
    int randomNumber = _random.nextInt(30);
    setState(() {
      _currentColor = Colors.primaries[randomNumber % Colors.primaries.length];
    });
  }

  @override
  Widget build(BuildContext context) {
    print('building `MyHomePage`');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: Icon(Icons.colorize),
      ),
      body: Stack(
        children: [
          const Positioned.fill(
            child: BackgroundWidget(),
          ),
          Center(
            child: Container(
              height: 150,
              width: 150,
              color: _currentColor,
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget();

  @override
  Widget build(BuildContext context) {
    print('building `BackgroundWidget`');
    return Image.network(
      'https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_960_720.jpg',
      fit: BoxFit.cover,
    );
  }
}
