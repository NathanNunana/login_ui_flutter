import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:loginUI/Widget/clip_path.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * .55,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xffFF83E3), Color(0xffF86979)])),
            ),
          ),
          Container(
            child: Text("Logo"),
          ),
          Transform.translate(
            offset: Offset(0, media.height * .35),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: MediaQuery.of(context).size.height * .45,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
//                        labelStyle: TextStyle(fontSize: 15),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.black12)),
                      ),
                    ),
                    Text("Password", style: TextStyle(fontSize: 20)),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.black12)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("Forgot Password?"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, media.height * .85),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      child: RaisedButton(
                    onPressed: () {},
                    color: Color(0xffFB7382),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(20.0),
                    child: Text("LOGIN",
                        style:
//                    GoogleFonts.getFont('gruppo')
                            TextStyle(color: Colors.white, fontSize: 20)),
                  )),
                  Container(
                    margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                    child: CircleAvatar(
                      child: Icon(
                        FontAwesome.facebook,
                        color: Colors.white,
                      ),
                      radius: 30,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff00ACEE),
                    child: Icon(AntDesign.twitter, color: Colors.white),
                    radius: 30,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
