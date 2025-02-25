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
              child: Icon(CupertinoIcons.left_chevron, size: 20, color: Color(0xFF1A120B),), onPressed: (){
            Navigator.pushAndRemoveUntil(
                context, CupertinoPageRoute(builder: (context) => CategoryApp()), (Route<dynamic> route) => false);
          }),
          middle: Text('Verses', style: TextStyle( color: Color(0xFF1A120B)),),
        ),

      
  }
}
