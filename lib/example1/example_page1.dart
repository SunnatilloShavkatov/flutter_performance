import 'package:flutter/material.dart';

class OptimalExamplePage1 extends StatelessWidget {
  const OptimalExamplePage1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const HeaderWidget(),
            const MainWidget(),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget();

  @override
  Widget build(BuildContext context) {
    print("object Header");
    final size = 40.0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.grey[700],
        child: FlutterLogo(
          size: size,
        ),
        radius: size,
      ),
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget();

  @override
  Widget build(BuildContext context) {
    print("object Main");
    return Expanded(
      child: Container(
        color: Colors.grey[700],
        child: Center(
          child: Text(
            'Hello Flutter',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget();

  @override
  Widget build(BuildContext context) {
    print("object Footer");
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('This is the footer '),
    );
  }
}
