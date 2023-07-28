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
      home : LoginPage(),
      debugShowCheckedModeBanner: false,
    );

  }
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Health App', style: TextStyle(
            fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Column(

      ),


    );

  }
}