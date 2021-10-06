import 'package:flutter/material.dart';

void main() {
runApp(CobaApp());
}

class CobaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Plants",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Plants", style: TextStyle(color: Colors.white),), 
            backgroundColor: Colors.lightGreen,
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications_active_rounded,
                    color: Colors.green[900]
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                      Icons.menu_rounded,
                      size: 28,
                      color: Colors.green[900]
                  ),
                )
              ),
            ] 
          ),


          body:  Column(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                    top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                    left: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                    right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                    bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                  ),
                ), ),
            ]
          )
        ));
  }
}
