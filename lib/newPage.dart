import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Yet annother page'),
        leading: new InkWell(
          radius: 50.0,
          borderRadius: const BorderRadius.all(const Radius.circular(100.0)),
          child: new Tooltip(
            message: 'Go back',
            child: new Icon(Icons.arrow_back),
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: new Center(
        child: new FlutterLogo(
          size: 300.0,
        ),
      ),
    );
  }
}
