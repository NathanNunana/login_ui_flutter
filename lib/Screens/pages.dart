import 'package:flutter/material.dart';
import 'package:loginUI/Screens/home_page.dart';
import 'package:loginUI/Screens/log.dart';
import 'package:loginUI/Screens/login.dart';

class Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Click To Open Page"),
        ),
        body: Column(
          children: <Widget>[
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => Log())),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Login Page 1",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Login())),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text("Login Page 2", style: TextStyle(fontSize: 25)),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage())),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text("Login Page 3", style: TextStyle(fontSize: 25)),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
