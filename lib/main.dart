import 'package:flutter/material.dart';
import 'package:healthapp/apptt.dart';
import 'package:healthapp/signup.dart';
import 'package:healthapp/loginpage.dart';

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
  const LoginPage({Key? key}) : super(key:key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeState = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Health App',style: TextStyle(fontSize: 25, color : Colors.white, fontWeight: FontWeight.bold ),),
        ),
      body:Column
        (

        children:[

          //Logo Field
          Padding
            (
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            child: Center(child: Image.asset('assets/logo.png',scale:3)),
            ),

          //Username TextField
           Padding
             (
           padding:EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: TextField(
            decoration: InputDecoration(
            border : OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),),
            hintText: "Enter Username Here",
            labelText: "Username",
            prefixIcon: Align(widthFactor: 1.0, heightFactor: 1.0, child: Icon(Icons.person,),),
            ),
          ),

           ),

          //Password TextField
           Padding(
            padding:EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: TextField(
            obscureText: changeState,
            decoration: InputDecoration(
                border : OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),),
            hintText: "Enter Password",
            labelText: "Password",
              prefixIcon: Align(widthFactor: 1.0, heightFactor: 1.0, child: Icon(Icons.lock,),),
              suffixIcon: Align(widthFactor: 1.0, heightFactor: 1.0, child: GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      changeState=!changeState;
                    });
                  },
                  child: Icon(Icons.remove_red_eye_outlined,)),),
            ),
            ),
          ),

          //For Login and Register Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const appa()),
                  );
                },
                child: Text('Login'),
              ),


              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                child: Text('Sign Up'),
              )
            ],
          ),

        ]
      )
    );

  }
}




