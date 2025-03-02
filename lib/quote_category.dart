import 'package:flutter/cupertino.dart';
import 'package:moncheri/category.dart';
import 'package:moncheri/confidence.dart';
import 'package:moncheri/inspirational.dart';
import 'package:moncheri/love.dart';
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
            'Quotes',
            style: TextStyle(color: Color(0xFF1A120B)),
          ),
        ),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: SafeArea(
                child: Column(
                  children: [
                    //MOTIVATION START
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFd9d9d9),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('images/self-confidence.png'),
                          alignment: Alignment.centerRight,
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: CupertinoButton(
                            child: Text(
                              'Motivational Quotes',
                              style: TextStyle(color:  Color(0xFF262626)),
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Motivational()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //MOTIVATION END

                    //MOTIVATION START
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFf2f2f2),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('images/love-books.png'),
                          alignment: Alignment.centerRight,
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: CupertinoButton(
                            child: Text(
                              'Love Quotes',
                              style: TextStyle(color:  Color(0xFF0d0d0d)),
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => LoveApp()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //MOTIVATION END

                    //MOTIVATION START
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFd9d9d9),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('images/inspiration.png'),
                          alignment: Alignment.centerRight,
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: CupertinoButton(
                            child: Text(
                              'Inspirational Quotes',
                              style: TextStyle(color:  Color(0xFF262626)),
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => InspiApp()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //MOTIVATION END

                    //MOTIVATION START
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFf2f2f2),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('images/thumbs-up.png'),
                          alignment: Alignment.centerRight,
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: CupertinoButton(
                            child: Text(
                              'Positive Quotes',
                              style: TextStyle(color: Color(0xFF0d0d0d)),
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Positive()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //MOTIVATION END

                    //MOTIVATION START
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFd9d9d9),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('images/sad1.png'),
                          alignment: Alignment.centerRight,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: CupertinoButton(
                            child: Text(
                              'Sad Quotes',
                              style: TextStyle(color:  Color(0xFF262626)),
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Sad()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //MOTIVATION END

                    //MOTIVATION START
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFf2f2f2),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('images/empire.png'),
                          alignment: Alignment.centerRight,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: CupertinoButton(
                            child: Text(
                              'Philosophical Quotes',
                              style: TextStyle(color:  Color(0xFF0d0d0d)),
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Philosopical()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //MOTIVATION END

                    //MOTIVATION START
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFd9d9d9),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('images/confidence.png'),
                          alignment: Alignment.centerRight,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: CupertinoButton(
                            child: Text(
                              'Confident Quotes',
                              style: TextStyle(color: Color(0xFF262626)),
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Confident()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //MOTIVATION END
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
