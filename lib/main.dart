import 'package:flutter/material.dart';
import 'package:tutorial_tkj/debian_page.dart';
import 'package:tutorial_tkj/mikrotik_page.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xFFD70751),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(120),
              ),
            ),
            child: Opacity(
              opacity: 0.07,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/pattern.jpg",
                    ),
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeat,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.92),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Ilham Adiputra @ TKJ SMKN 1 Kota Solok",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.95),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "With the spirit of learning",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontFamily: "Montserrat",
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.97),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "2019/2020",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontFamily: "Montserrat",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
