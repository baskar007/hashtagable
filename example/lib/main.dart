import 'package:flutter/material.dart';
import 'package:hashtagable/hashtagable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /// Tagged text only to be shown
                HashTagText(
                  text:
                      "#Welcome to Clubs ##geo-hash tag-able\n This is #ReadOnlyText, you can also mention profile using [at] @baskar",
                  basicStyle: TextStyle(fontSize: 22, color: Colors.black),
                  decoratedStyle: TextStyle(fontSize: 22, color: Colors.blue),
                  doubleHashStyle: TextStyle(fontSize: 22, color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                HashTagTextField(
                  basicStyle: TextStyle(fontSize: 22, color: Colors.black),
                  decoratedStyle: TextStyle(fontSize: 22, color: Colors.blue),
                  doubleHashStyle: TextStyle(fontSize: 22, color: Colors.red),
                  maxLines: 3,
                  keyboardType: TextInputType.multiline,
                  onTap: () {
                    print("on TAB");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
