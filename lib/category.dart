import 'package:flutter/cupertino.dart';
import 'package:moncheri/main.dart';
import 'package:moncheri/quote_category.dart';
import 'package:moncheri/verses.dart';

class CategoryApp extends StatefulWidget {
  const CategoryApp({super.key});

  @override
  State<CategoryApp> createState() => _CategoryAppState();
}

class _CategoryAppState extends State<CategoryApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
              padding: EdgeInsets.zero,
              child: Icon(
                CupertinoIcons.left_chevron,
                size: 20,
                color: Color(0xFF1A120B),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(builder: (context) => MyApp()),
                    (Route<dynamic> route) => false);
              }),
          middle: Text(
            'Ashborn',
            style: TextStyle(color: Color(0xFF1A120B)),
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  Text('Discover Daily Inspiration and Motivation',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5E5CB),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: CupertinoButton(
                          child: Text(
                            'Quotes',
                            style: TextStyle(color: CupertinoColors.black),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => CategoryQuote()));
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5E5CB),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: CupertinoButton(
                          child: Text(
                            'Verses',
                            style: TextStyle(color: CupertinoColors.black),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => VerseCategory()));
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
