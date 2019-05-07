import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Data'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('Go To First Screen'),
          onPressed: () {
            Navigator.push(context, FirstScreen());
          },
        ),
      ),
    );
  }
}

class FirstScreen extends MaterialPageRoute<Null> {
  FirstScreen()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('First Screen'),
            ),
            body: Center(
              child: RaisedButton(
                  child: Text('Go to Second Screen'),
                  onPressed: () {
                    Navigator.push(context, SecondScreen());
                  }),
            ),
          );
        });
}

class SecondScreen extends MaterialPageRoute<Null> {
  SecondScreen()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Second Screen'),
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Go to Previous Screen'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 50.0,),
                  RaisedButton(
                    child: Text('Go to Home Screen'),
                    onPressed: (){
                      Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
                  },),
                ],
              ),
            ),
          );
        });
}
