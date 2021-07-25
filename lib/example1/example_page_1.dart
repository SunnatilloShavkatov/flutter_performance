import 'package:flutter/material.dart';

class ExamplePage1 extends StatelessWidget {
  Widget _buildHeaderWidget() {
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

  Widget _buildMainWidget(BuildContext context) {
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

  Widget _buildFooterWidget() {
    print("object Footer");
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('This is the footer '),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHeaderWidget(),
            _buildMainWidget(context),
            _buildFooterWidget(),
          ],
        ),
      ),
    );
  }
}
