import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:moncheri/quote_category.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sad extends StatefulWidget {
  const Sad({super.key});

  @override
  State<Sad> createState() => _SadState();
}

class _SadState extends State<Sad> {
  int currentIndexqs = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexqs = prefs.getInt('currentIndexqs') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexqss', currentIndexqs);
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
                    CupertinoPageRoute(builder: (context) => CategoryQuote()),
                    (Route<dynamic> route) => false);
              }),
          middle: Text(
            'Sad Quotes',
            style: TextStyle(color: Color(0xFF1A120B)),
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E5CB),
                    ),
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          quotes[currentIndexqs]["quote"]!,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Text(
                      quotes[currentIndexqs]["author"]!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF3C2A21),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                              currentIndexqs = (currentIndexqs - 1) %
                                  quotes
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
                              currentIndexqs = (currentIndexqs + 1) %
                                  quotes
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
