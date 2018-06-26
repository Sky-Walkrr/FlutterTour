import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

//void main() => runApp(new LoadAssetPractice());

class LoadAssetPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'loadAssets',
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('UnBelvo'),
            ),
            body: new StateWidget()));
  }
}

class StateWidget extends StatefulWidget {
  @override
  MyState createState() => new MyState();
}

class MyState extends State<StateWidget> {
  String text = 'test';

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.all(16.0),
            child: new Text(text),
          ),
          new CupertinoButton(
              color: Colors.blue,
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              pressedOpacity: 0.8,
              borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
              child: new Text('Load Asset'),
              onPressed: updateText),
          new Container(
            padding: const EdgeInsets.all(10.0),
            child: new CupertinoButton(
                color: Colors.grey,
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                pressedOpacity: 0.8,
                borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                child: new Text('Reload'),
                onPressed: updateText2),
          )

        ],
      ),
    );
  }

  void updateText() {
    loadAsset()
        .then((s) => setState(() {
              text = s;
            }))
        .catchError((err) => print(err));
  }

  void updateText2() {
    setState(() {
      text = 'reset';
    });
  }

  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/config.json');
  }
}
