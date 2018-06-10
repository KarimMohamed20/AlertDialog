import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _alertDialogShowing(){
    var alert = new AlertDialog(
      title: new Text("AlertDialog"),
      content: new Text("Clicked"),
      actions: <Widget>[
        new FlatButton(
          onPressed: ()=>Navigator.pop(context),
          child: new Text("Close"),
        )
      ],
    );
    showDialog(child: alert,context: context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "AlertDialog",
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          ),
        ),
        centerTitle: true,
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text("Click The Button To Activate AlertDialog"),
            new Padding(
              padding: const EdgeInsets.all(20.0),
            ),
            new RaisedButton(
              onPressed: _alertDialogShowing,
              child: new Text("Click Now"),
            ),
          ],
        ),
      ),
    );
  }
}
