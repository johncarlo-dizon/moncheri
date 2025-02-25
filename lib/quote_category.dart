import 'package:flutter/cupertino.dart';
import 'package:moncheri/category.dart';
import 'package:moncheri/confidence.dart';
import 'package:moncheri/inspirational.dart';
import 'package:moncheri/love.dart';
import 'package:moncheri/main.dart';
import 'package:moncheri/motivational.dart';
import 'package:moncheri/philosopical.dart';
import 'package:moncheri/positive.dart';
import 'package:moncheri/sad.dart';

class CategoryQuote extends StatefulWidget {
  const CategoryQuote({super.key});

  @override
  State<CategoryQuote> createState() => _CategoryQuoteState();
}

class _CategoryQuoteState extends State<CategoryQuote> {
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
          middle: Text('Quotes', style: TextStyle( color: Color(0xFF1A120B)),),
        ),



      
  }
}
