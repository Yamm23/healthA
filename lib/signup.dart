import 'package:flutter/material.dart';

void main() {
  runApp(HealthApp());
}

class HealthApp extends StatelessWidget {
  const HealthApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fnameController = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phonenumber = TextEditingController();

  void submit() {
    if (fnameController.text.isNotEmpty &&
        email.text.isNotEmpty &&
        password.text.isNotEmpty &&
        phonenumber.text.isNotEmpty) {
      Navigator.pop(context);
    } else {
      // show a message that all fields are required
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('All fields are required!'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Sign Up', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold,),),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 25),
            Text('Sign Up', style: TextStyle(fontSize: 25, color: Colors.blueAccent, fontWeight: FontWeight.bold,),),
            SizedBox(height: 20),
            TextField(
              controller: fnameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: "Full Name",
                labelText: "Full Name",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: "Enter Your Email Address",
                labelText: "Email Address",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: "Enter Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: phonenumber,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: "Enter Phone Number",
                labelText: "Phone Number",
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: submit,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
