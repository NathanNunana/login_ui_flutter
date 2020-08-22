import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Log extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Ionicons.ios_arrow_back),
                    Icon(Ionicons.md_menu)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: CircleAvatar(
                  backgroundColor: Color(0xff00FFFF),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 130,
                  ),
                  radius: 70,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
//                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "Username",
                            filled: true,
                            fillColor: Color(0xffE0FFFF),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90)),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Ionicons.ios_lock),
                          hintText: "Password",
                          filled: true,
                          fillColor: Color(0xffE0FFFF),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80)),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(value: false, onChanged: null),
                        Text("Remember me")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(80))),
                              onPressed: () {},
                              color: Color(0xff00FFFF),
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Sign in",
                          style:
                              TextStyle(color: Color(0xff00FFFF), fontSize: 20),
                        )
                      ],
                    )
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
