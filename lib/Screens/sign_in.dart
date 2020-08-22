import 'package:flutter/material.dart';
import 'package:loginUI/Widget/clip_path.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height * .45,
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                "Login",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.blueAccent,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blueAccent,
                            ))),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      margin: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
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
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
