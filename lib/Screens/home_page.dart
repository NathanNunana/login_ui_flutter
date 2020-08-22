import 'package:flutter/material.dart';
import 'sign_in.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueAccent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return SignIn();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border(
                          right: BorderSide(color: Colors.white),
                          left: BorderSide(color: Colors.white),
                          bottom: BorderSide(color: Colors.white),
                          top: BorderSide(color: Colors.white)),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignIn())),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
                ),
              ),
              Center(
                  child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Text("Forgot password?",
                    style: TextStyle(color: Colors.white)),
              ))
            ],
          )),
    );
  }
}
