import 'package:flutter/material.dart';

void main() {
  runApp(healthApp());
}

class healthApp extends StatelessWidget
{
  const healthApp({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : appa(),
      debugShowCheckedModeBanner: false,
    );

  }
}
class appa extends StatelessWidget {
  const appa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
        Row(
        //ROW 1
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          color: Colors.orange,
          margin: EdgeInsets.all(25.0),
          child: FlutterLogo(
            size: 60.0,
          ),
        ),
        Container(
          color: Colors.blue,
          margin: EdgeInsets.all(25.0),
          child: FlutterLogo(
            size: 60.0,
          ),
        ),
        Container(
          color: Colors.purple,
          margin: EdgeInsets.all(25.0),
          child: FlutterLogo(
            size: 60.0,
          ),
        ),
        ],
        ),

            ]
        ),

    );
  }
}
