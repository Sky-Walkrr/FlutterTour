import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleTextStyle = new TextStyle(
      color: Colors.white,
      fontSize: 30.0,
    );
    final primaryTextStyle = new TextStyle(color: Colors.white, fontSize: 16.0);
    final secondaryTextStyle =
        new TextStyle(color: Colors.grey.shade300, fontSize: 14.0);
    final subTitleTextStyle =
        new TextStyle(color: Colors.black, fontSize: 16.0);
    final header = new Container(
        decoration: new BoxDecoration(
            gradient: const RadialGradient(
          colors: [Colors.deepPurple, Colors.redAccent],
        )),
        child: new Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.only(top: 30.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )
                ],
              ),
              new Text(
                'Profile',
                style: titleTextStyle,
              ),
              new Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new CircleAvatar(
                      radius: 50.0,
                      child: new SizedBox(
                        width: 100.0,
                        height: 100.0,
                        child: new Image.asset('images/jetpacktocat.png'),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            'SkyWalker',
                            style: primaryTextStyle,
                          ),
                          new Container(
                            margin: const EdgeInsets.only(top: 8.0),
                            child: new Text(
                              'Nice to meet you!',
                              style: secondaryTextStyle,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            'Followers',
                            style: primaryTextStyle,
                          ),
                          new Text(
                            '5.7M',
                            style: primaryTextStyle,
                          )
                        ],
                      ),
                      new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            'Following',
                            style: primaryTextStyle,
                          ),
                          new Text(
                            '509',
                            style: primaryTextStyle,
                          )
                        ],
                      ),
                      new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            'Total Like',
                            style: primaryTextStyle,
                          ),
                          new Text(
                            '20.5K',
                            style: primaryTextStyle,
                          )
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ));

    return new Scaffold(
      body: new Column(
        children: <Widget>[
          header,
          new Expanded(
              child: new Center(
            child: new Text('Bonjour'),
          )),
          new Container(
            color: Colors.white,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new InkWell(
                  radius: 30.0,
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(30.0)),
                  child: new Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: new Icon(Icons.home),
                  ),
                ),
                new InkWell(
                  radius: 30.0,
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(30.0)),
                  child: new Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: new Icon(Icons.bookmark),
                  ),
                ),
                new InkWell(
                  radius: 30.0,
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(30.0)),
                  child: new Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: new Icon(Icons.thumb_up),
                  ),
                ),
                new InkWell(
                  radius: 30.0,
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(30.0)),
                  child: new Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: new Icon(Icons.person)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
