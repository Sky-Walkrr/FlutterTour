import 'package:flutter/material.dart';

//void main() => runApp(new LayoutPracticeWidget());

class LayoutPracticeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start, // 起始对齐
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                    child: new Text(
                      'Spring Inaction',
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  new Text(
                    'Craig Walls',
                    style: new TextStyle(
                        color: Colors.grey[800], fontSize: 16.0),
                  )
                ],
              )),
//          new Icon(Icons.favorite, color: Colors.deepPurple),
//          new Container(
//            padding: const EdgeInsets.only(left: 8.0),
//            child: new Text('Flutter'),
//          )
        new MyStateWidget()
        ],
      ),
    );

    Widget btnSection = new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildBtnColumn(context, Icons.phone, 'Tel'),
        buildBtnColumn(context, Icons.map, 'Address'),
        buildBtnColumn(context, Icons.sms, 'Message')
      ],
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
        style: new TextStyle(height: 1.2),
      ),
    );

    return new MaterialApp(
      title: 'LayoutPractice',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('AppBarTitle'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/bg_app.jpg',
              width: 600.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            btnSection,
            textSection,
          ],
        ),
      ),
    );
  }

  buildBtnColumn(BuildContext context, IconData icon, String text) {
    Color color = Theme
        .of(context)
        .primaryColor;

    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(icon, color: color),
        new Container(
            margin: const EdgeInsets.all(8.0),
            child: new Text(
              text,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ))
      ],
    );
  }
}


class MyStateWidget extends StatefulWidget {
  @override
  _MyState createState() => new _MyState();

}

class _MyState extends State<MyStateWidget> {
  int _favCount = 9;
  bool _isFav = false;

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      borderRadius: const BorderRadius.all(const Radius.circular(50.0)),
      splashColor: Colors.redAccent[100],
      onTap: _toggleState,
      child: new Container(
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(_isFav ? Icons.favorite : Icons.favorite_border,
                color: _isFav ? Colors.red : Colors.grey),
            new SizedBox(
              width: 50.0,
              child: new Container(
                padding: const EdgeInsets.all(8.0),
                child: new Text('$_favCount'),
              ),
            )
          ],
        ),
      ),
    );
  }

  _toggleState() {
    setState(() {
      _isFav = !_isFav;
      if (_isFav) {
        _favCount ++;
      } else {
        _favCount --;
      }
    });
  }

}
