import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:moncheri/category.dart';
import 'package:moncheri/quote_category.dart';

void main() {
  runApp(CupertinoApp(
    theme: CupertinoThemeData(brightness: Brightness.light),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 160,
                ),
                Image.asset(
                  'images/woman.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Mon chéri',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A120B)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF3C2A21),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: CupertinoButton(
                      child: Text(
                        "View",
                        style: TextStyle(color: CupertinoColors.white),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => CategoryApp()));
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
