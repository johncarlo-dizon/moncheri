import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:moncheri/category.dart';

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
        navigationBar: CupertinoNavigationBar(
          trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: Icon(
                CupertinoIcons.profile_circled,
                size: 20,
                color: Color(0xFF3C2A21),
              ),
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text(
                          'Development Team',
                          style: TextStyle(
                            color: Color(0xFF3C2A21),
                          ),
                        ),
                        content: Column(
                          children: [
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Avendano, Aaron Jireh"),
                                        Text(
                                          "Quality Assurance Tester",
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ClipOval(
                                    child: Image.asset(
                                      'images/aaron.jpg',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Basilio, Joseph Lee"),
                                        Text(
                                          "UI/UI Designer",
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ClipOval(
                                    child: Image.asset(
                                      'images/joseph.jpg',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Dizon, Joel"),
                                        Text(
                                          "Quality Assurance Tester",
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ClipOval(
                                    child: Image.asset(
                                      'images/joel.jpg',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Dizon, John Carlo"),
                                        Text(
                                          "Software Developer",
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ClipOval(
                                    child: Image.asset(
                                      'images/jc.jpg',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Simbillio, Jomel"),
                                        Text(
                                          "UI/UX Designer",
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ClipOval(
                                    child: Image.asset(
                                      'images/jomel.jpg',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          CupertinoButton(
                              child: Text(
                                'Close',
                                style: TextStyle(
                                    color: CupertinoColors.destructiveRed),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ],
                      );
                    });
              }),
        ),
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
