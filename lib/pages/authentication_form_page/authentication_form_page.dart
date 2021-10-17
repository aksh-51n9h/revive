import 'package:flutter/material.dart';

class AuthenticationFormPage extends StatefulWidget {
  const AuthenticationFormPage({Key? key}) : super(key: key);

  @override
  _AuthenticationFormPageState createState() => _AuthenticationFormPageState();
}

class _AuthenticationFormPageState extends State<AuthenticationFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [ElevatedButton(onPressed: () {}, child: Text("LOGIN"))],
          ),
        ),
      ),
    );
  }
}
