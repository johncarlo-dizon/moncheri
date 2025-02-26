import 'package:flutter/cupertino.dart';
import 'package:moncheri/verses.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StrengthVerse extends StatefulWidget {
  const StrengthVerse({super.key});

  @override
  State<StrengthVerse> createState() => _StrengthVerseState();
}

class _StrengthVerseState extends State<StrengthVerse> {
  List<Map<String, String>> verses = [
    {
      "verse":
          "Be strong and courageous. Do not be afraid; do not be discouraged, for the Lord your God will be with you wherever you go.",
      "title": "- Joshua 1:9"
    },
    {
      "verse": "I can do all things through Christ who strengthens me.",
      "title": "- Philippians 4:13"
    },
    {
      "verse":
          "The Lord is my light and my salvation—whom shall I fear? The Lord is the stronghold of my life—of whom shall I be afraid?",
      "title": "- Psalm 27:1"
    },
    {
      "verse":
          "The Lord is near to all who call on him, to all who call on him in truth.",
      "title": "- Psalm 145:18"
    },
    {
      "verse": "The Lord will fight for you; you need only to be still.",
      "title": "- Exodus 14:14"
    },
    {
      "verse": "But the one who stands firm to the end will be saved.",
      "title": "- Matthew 24:13"
    },
    {
      "verse":
          "So do not fear, for I am with you; do not be dismayed, for I am your God. I will strengthen you and help you; I will uphold you with my righteous right hand.",
      "title": "- Isaiah 41:10"
    },
    {
      "verse":
          "For I am confident of this very thing, that He who began a good work in you will perfect it until the day of Christ Jesus.",
      "title": "- Philippians 1:6"
    },
    {
      "verse":
          "The God of all grace, who called you to his eternal glory in Christ, after you have suffered a little while, will himself restore you and make you strong, firm and steadfast.",
      "title": "- 1 Peter 5:10"
    },
    {
      "verse": "Be strong and take heart, all you who hope in the Lord.",
      "title": "- Psalm 31:24"
    },
    {
      "verse": "Finally, be strong in the Lord and in his mighty power.",
      "title": "- Ephesians 6:10"
    },
    {
      "verse":
          "Have I not commanded you? Be strong and courageous. Do not be afraid; do not be discouraged, for the Lord your God will be with you wherever you go.",
      "title": "- Joshua 1:9"
    },
    {
      "verse":
          "The Lord is my strength and my defense; he has become my salvation.",
      "title": "- Exodus 15:2"
    },
    {
      "verse":
          "For God gave us a spirit not of fear but of power and love and self-control.",
      "title": "- 2 Timothy 1:7"
    },
    {
      "verse":
          "I sought the Lord, and he answered me; he delivered me from all my fears.",
      "title": "- Psalm 34:4"
    },
    {
      "verse":
          "Do not be afraid of them; the Lord your God himself will fight for you.",
      "title": "- Deuteronomy 3:22"
    },
    {
      "verse":
          "And he said to me, 'My grace is sufficient for you, for my power is made perfect in weakness.' Therefore I will boast all the more gladly of my weaknesses, so that the power of Christ may rest upon me.",
      "title": "- 2 Corinthians 12:9"
    },
    {
      "verse":
          "Fear not, for I am with you; be not dismayed, for I am your God; I will strengthen you, I will help you, I will uphold you with my righteous right hand.",
      "title": "- Isaiah 41:10"
    },
    {
      "verse": "But the Lord stood by me and gave me strength.",
      "title": "- 2 Timothy 4:17"
    },
    {
      "verse":
          "The righteous person may have many troubles, but the Lord delivers him from them all.",
      "title": "- Psalm 34:19"
    },
    {
      "verse": "When I am afraid, I put my trust in you.",
      "title": "- Psalm 56:3"
    },
    {
      "verse":
          "The Lord is my strength and my song; he has become my salvation.",
      "title": "- Psalm 118:14"
    },
    {
      "verse":
          "But the Lord is faithful, and he will strengthen you and protect you from the evil one.",
      "title": "- 2 Thessalonians 3:3"
    },
    {
      "verse": "For nothing will be impossible with God.",
      "title": "- Luke 1:37"
    },
    {
      "verse":
          "Do not be afraid, for I have redeemed you; I have summoned you by name; you are mine.",
      "title": "- Isaiah 43:1"
    },
    {
      "verse":
          "Be strong and courageous, for you shall cause this people to inherit the land that I swore to their fathers to give them.",
      "title": "- Joshua 1:6"
    },
    {
      "verse":
          "I will strengthen you and help you; I will uphold you with my righteous right hand.",
      "title": "- Isaiah 41:10"
    },
    {
      "verse":
          "The Lord is my helper; I will not be afraid. What can man do to me?",
      "title": "- Hebrews 13:6"
    },
    {
      "verse":
          "For we do not have a high priest who is unable to empathize with our weaknesses, but we have one who has been tempted in every way, just as we are—yet he did not sin.",
      "title": "- Hebrews 4:15"
    },
    {"verse": "Let the weak say, 'I am strong.'", "title": "- Joel 3:10"},
    {
      "verse": "For you have been my refuge, a strong tower against the foe.",
      "title": "- Psalm 61:3"
    },
    {
      "verse": "But the one who perseveres to the end will be saved.",
      "title": "- Matthew 24:13"
    },
    {
      "verse":
          "If any of you lacks wisdom, let him ask of God, who gives to all liberally and without reproach, and it will be given to him.",
      "title": "- James 1:5"
    },
    {
      "verse":
          "Finally, be strong in the Lord and in the strength of his might.",
      "title": "- Ephesians 6:10"
    },
    {
      "verse":
          "For the Lord will be your confidence and will keep your foot from being caught.",
      "title": "- Proverbs 3:26"
    },
    {
      "verse":
          "The Lord is my strength and my song; he has become my salvation.",
      "title": "- Exodus 15:2"
    },
    {
      "verse": "Stand firm in your faith. Be courageous. Be strong.",
      "title": "- 1 Corinthians 16:13"
    },
    {
      "verse":
          "Do not be afraid or discouraged, for the Lord your God is with you wherever you go.",
      "title": "- Joshua 1:9"
    },
    {
      "verse":
          "The Lord gives strength to his people; the Lord blesses his people with peace.",
      "title": "- Psalm 29:11"
    }
  ];

  int currentIndexvs = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexvs = prefs.getInt('currentIndexvs') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexvs', currentIndexvs);
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
            'Strength and Courage',
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
                          verses[currentIndexvs]["title"] ??
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
                          verses[currentIndexvs]["verse"]!,
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
                              currentIndexvs = (currentIndexvs - 1) %
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
                              currentIndexvs = (currentIndexvs + 1) %
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
