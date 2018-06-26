import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show FlutterLogo, Colors, MaterialApp;

class AnimationPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.deepPurple,
      home: CupertinoPageScaffold(
          navigationBar: new CupertinoNavigationBar(
            middle: new Text('AnimationPractice'),
          ),
          child: new MyAnimationWidget(
            btnText: 'Animate!',
          )),
    );
  }
}

class MyAnimationWidget extends StatefulWidget {
  final String btnText;

  MyAnimationWidget({Key key, this.btnText}) : super(key: key);

  @override
  MyAnimationState createState() => new MyAnimationState();
}

class MyAnimationState extends State<MyAnimationWidget>
    with TickerProviderStateMixin {
  AnimationController animationController;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    animationController = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    curvedAnimation = new CurvedAnimation(
        parent: animationController, curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.all(16.0),
            child: new FadeTransition(
              opacity: curvedAnimation,
              child: new FlutterLogo(
                size: 300.0,
                colors: Colors.deepPurple,
              ),
            ),
          ),
          new CupertinoButton(
              child: new Text(widget.btnText),
              color: Colors.deepPurple,
              borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
              onPressed: () {
                animationController.forward();
              }),
        ],
      ),
    );
  }
}
