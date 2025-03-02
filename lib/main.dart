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
                size: 25,
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
                            color: Color(0xFF0d0d0d),
                          ),
                        ),
                        content: Column(
                          children: [
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFf2f2f2),
                                image: DecorationImage(
                                  image: AssetImage('images/aaron.jpg'),
                                  alignment: Alignment.centerRight,
                                  fit: BoxFit.contain,
                                ),
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
                                        Text("Avendano, Aaron Jireh", style: TextStyle(color: Color(0xFF0d0d0d)),),
                                        Text(
                                          "Quality Assurance Tester",
                                          style: TextStyle(
                                              fontSize: 10, color: Color(0xFF595959)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),

                            Container(
                              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFf2f2f2),
                                image: DecorationImage(
                                  image: AssetImage('images/joseph.jpg'),
                                    alignment: Alignment.centerRight,
                                    fit: BoxFit.contain,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Basilio, Joseph Lee", style: TextStyle(color: Color(0xFF0d0d0d)),),
                                        Text(
                                          "UI/UI Designer",
                                          style: TextStyle(
                                              fontSize: 10, color: Color(0xFF595959)),
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),


                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFf2f2f2),
                                image: DecorationImage(
                                  image: AssetImage('images/joel.jpg'),
                                  alignment: Alignment.centerRight,
                                  fit: BoxFit.contain,
                                ),
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
                                        Text("Dizon, Joel", style: TextStyle(color: Color(0xFF0d0d0d)),),
                                        Text(
                                          "Quality Assurance Tester",
                                          style: TextStyle(
                                              fontSize: 10, color: Color(0xFF595959)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFf2f2f2),
                                image: DecorationImage(
                                  image: AssetImage('images/jc.jpg'),
                                  alignment: Alignment.centerRight,
                                  fit: BoxFit.contain,
                                ),
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
                                        Text("Dizon, John Carlo", style: TextStyle(color: Color(0xFF0d0d0d)),),
                                        Text(
                                          "Software Developer",
                                          style: TextStyle(
                                              fontSize: 10, color: Color(0xFF595959)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFf2f2f2),
                                image: DecorationImage(
                                  image: AssetImage('images/jomel.jpg'),
                                  alignment: Alignment.centerRight,
                                  fit: BoxFit.contain,
                                ),
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
                                        Text("Simbillio, Jomel", style: TextStyle(color: Color(0xFF0d0d0d)),),
                                        Text(
                                          "UI/UX Designer",
                                          style: TextStyle(
                                              fontSize: 10, color: Color(0xFF595959)),
                                        ),
                                      ],
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






                    Text(
                      'Mon Chéri',
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0d0d0d)),
                      textAlign: TextAlign.center,
                    ),


                    SizedBox(
                      height: 15,
                    ),


                    Text('Daily Inspiration for the Heart and Mind',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF595959)),
                      textAlign: TextAlign.center,
                    ),


                    SizedBox(
                      height: 15,
                    ),


                    Image.asset(
                      'images/butterfly.png',
                      width: 100,
                      height: 100,
                    ),

                    SizedBox(
                      height: 15,
                    ),


                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF595959),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: CupertinoButton(
                          child: Text(
                            "View",
                            style: TextStyle(color: CupertinoColors.white, fontWeight: FontWeight.bold),
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
