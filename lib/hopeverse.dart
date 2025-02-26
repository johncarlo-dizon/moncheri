import 'package:flutter/cupertino.dart';
import 'package:moncheri/verses.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HopeVerse extends StatefulWidget {
  const HopeVerse({super.key});

  @override
  State<HopeVerse> createState() => _HopeVerseState();
}

class _HopeVerseState extends State<HopeVerse> {
  int currentIndexvh = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexvh = prefs.getInt('currentIndexvh') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexvh', currentIndexvh);
  }

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
                    CupertinoPageRoute(builder: (context) => VerseCategory()),
                    (Route<dynamic> route) => false);
              }),
          middle: Text(
            'Hope and Encouragement',
            style: TextStyle(color: Color(0xFF1A120B)),
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 110,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          verses[currentIndexvh]["title"] ??
                              "No Title Available", // Null safety
                          style: TextStyle(fontSize: 25),
                          overflow: TextOverflow
                              .ellipsis, // Ensures that text is truncated with ellipsis if it's too long
                          maxLines: 1, // Limits text to a single line
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double
                        .infinity, // Use infinity for full width within the parent constraints
                    decoration: BoxDecoration(
                      color: Color(0xFFFBFBFB),
                      boxShadow: [
                        BoxShadow(
                          color: CupertinoColors.black
                              .withOpacity(0.2), // Shadow color with opacity
                          offset:
                              Offset(4, 4), // Horizontal and vertical offset
                          blurRadius:
                              5, // Blur radius (how soft or hard the shadow is)
                          spreadRadius:
                              1, // Spread radius (how far the shadow spreads)
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(30),
                    child: Column(
                      // Use Column to ensure proper layout
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          verses[currentIndexvh]["verse"]!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18), // You can style the text here
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // First Button
                      Container(
                        padding: EdgeInsets.zero,
                        width: MediaQuery.of(context).size.width *
                            0.3, // Make width dynamic
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF3C2A21),
                        ),
                        child: CupertinoButton(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.left_chevron,
                                color: CupertinoColors.white,
                                size: 15,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Prev",
                                style: TextStyle(
                                    color: CupertinoColors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          onPressed: () {
                            setState(() {
                              currentIndexvh = (currentIndexvh - 1) %
                                  verses
                                      .length; // Loop back to 0 after the last quote
                              _saveCurrentIndex();
                            });
                          },
                        ),
                      ),

                      // Second Button
                      Container(
                        padding: EdgeInsets.zero,
                        width: MediaQuery.of(context).size.width *
                            0.3, // Make width dynamic
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF3C2A21),
                        ),
                        child: CupertinoButton(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                    color: CupertinoColors.white, fontSize: 15),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                CupertinoIcons.right_chevron,
                                color: CupertinoColors.white,
                                size: 15,
                              ),
                            ],
                          ),
                          onPressed: () {
                            setState(() {
                              currentIndexvh = (currentIndexvh + 1) %
                                  verses
                                      .length; // Loop back to 0 after the last quote
                              _saveCurrentIndex();
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
