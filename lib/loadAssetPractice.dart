import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

void main() => new LoadAssetPractice();

class LoadAssetPractice extends StatelessWidget {

  String text;

  @override
  Widget build(BuildContext context) {
    loadAsset().then((s) => text = s).catchError((err) => print(err));
    return new MaterialApp(
      theme: new ThemeData.dark(),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('UnBelvo'),
        ),
        body: new Center(
          child: new Text(text),
        ),
      ),
    );
  }


  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/config.json');
  }

}