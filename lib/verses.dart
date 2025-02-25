import 'package:flutter/cupertino.dart';
import 'package:moncheri/category.dart';
import 'package:moncheri/faithverse.dart';
import 'package:moncheri/hopeverse.dart';
import 'package:moncheri/loveverse.dart';
import 'package:moncheri/motivational.dart';
import 'package:moncheri/strengthverse.dart';

class VerseCategory extends StatefulWidget {
  const VerseCategory({super.key});

  @override
  State<VerseCategory> createState() => _VerseCategoryState();
}

class _VerseCategoryState extends State<VerseCategory> {
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
                    CupertinoPageRoute(builder: (context) => CategoryApp()),
                    (Route<dynamic> route) => false);
              }),
          middle: Text(
            'Verses',
            style: TextStyle(color: Color(0xFF1A120B)),
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E5CB),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: CupertinoButton(
                          child: Text(
                            'Faith and Trust',
                            style: TextStyle(color: CupertinoColors.black),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => FaithVerse()));
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E5CB),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: CupertinoButton(
                          child: Text(
                            'Love and Compassion',
                            style: TextStyle(color: CupertinoColors.black),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => LoveVerse()));
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E5CB),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: CupertinoButton(
                          child: Text(
                            'Hope and Encouragement',
                            style: TextStyle(color: CupertinoColors.black),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => HopeVerse()));
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E5CB),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: CupertinoButton(
                          child: Text(
                            'Strength and Courage',
                            style: TextStyle(color: CupertinoColors.black),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => StrengthVerse()));
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
