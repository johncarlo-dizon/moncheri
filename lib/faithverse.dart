import 'package:flutter/cupertino.dart';
import 'package:moncheri/verses.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FaithVerse extends StatefulWidget {
  const FaithVerse({super.key});

  @override
  State<FaithVerse> createState() => _FaithVerseState();
}

class _FaithVerseState extends State<FaithVerse> {
  List<Map<String, String>> verses = [
    {
      "verse":
          "He replied, 'Because you have so little faith. Truly I tell you, if you have faith as small as a mustard seed, you can say to this mountain, 'Move from here to there,' and it will move. Nothing will be impossible for you.",
      "title": "- Matthew 17:20"
    },
    {
      "verse":
          "Now faith is confidence in what we hope for and assurance about what we do not see.",
      "title": "- Hebrews 11:1"
    },
    {
      "verse": "For we live by faith, not by sight.",
      "title": "- 2 Corinthians 5:7"
    },
    {
      "verse":
          "But when you ask, you must believe and not doubt, because the one who doubts is like a wave of the sea, blown and tossed by the wind.",
      "title": "- James 1:6"
    },
    {
      "verse": "I can do all this through him who gives me strength.",
      "title": "- Philippians 4:13"
    },
    {
      "verse":
          "For I know the plans I have for you, declares the Lord, plans for welfare and not for evil, to give you a future and a hope.",
      "title": "- Jeremiah 29:11"
    },
    {
      "verse":
          "Trust in the Lord with all your heart and lean not on your own understanding; in all your ways submit to him, and he will make your paths straight.",
      "title": "- Proverbs 3:5-6"
    },
    {
      "verse":
          "The Lord is my light and my salvation—whom shall I fear? The Lord is the stronghold of my life—of whom shall I be afraid?",
      "title": "- Psalm 27:1"
    },
    {
      "verse":
          "Do not be afraid or discouraged, for the Lord your God is with you wherever you go.",
      "title": "- Joshua 1:9"
    },
    {
      "verse":
          "But those who hope in the Lord will renew their strength. They will soar on wings like eagles; they will run and not grow weary, they will walk and not be faint.",
      "title": "- Isaiah 40:31"
    },
    {
      "verse": "The Lord will fight for you; you need only to be still.",
      "title": "- Exodus 14:14"
    },
    {
      "verse":
          "I sought the Lord, and he answered me; he delivered me from all my fears.",
      "title": "- Psalm 34:4"
    },
    {
      "verse":
          "Fear not, for I am with you; be not dismayed, for I am your God; I will strengthen you, I will help you, I will uphold you with my righteous right hand.",
      "title": "- Isaiah 41:10"
    },
    {
      "verse":
          "Jesus looked at them and said, 'With man this is impossible, but with God all things are possible.'",
      "title": "- Matthew 19:26"
    },
    {
      "verse": "Cast all your anxiety on him because he cares for you.",
      "title": "- 1 Peter 5:7"
    },
    {
      "verse":
          "So we say with confidence, 'The Lord is my helper; I will not be afraid. What can mere mortals do to me?'",
      "title": "- Hebrews 13:6"
    },
    {
      "verse":
          "The righteous person may have many troubles, but the Lord delivers him from them all.",
      "title": "- Psalm 34:19"
    },
    {
      "verse":
          "And we know that in all things God works for the good of those who love him, who have been called according to his purpose.",
      "title": "- Romans 8:28"
    },
    {
      "verse":
          "Come to me, all you who are weary and burdened, and I will give you rest.",
      "title": "- Matthew 11:28"
    },
    {
      "verse":
          "For the Spirit God gave us does not make us timid, but gives us power, love and self-discipline.",
      "title": "- 2 Timothy 1:7"
    },
    {
      "verse":
          "You will keep in perfect peace those whose minds are steadfast, because they trust in you.",
      "title": "- Isaiah 26:3"
    },
    {
      "verse": "But the one who stands firm to the end will be saved.",
      "title": "- Matthew 24:13"
    },
    {
      "verse":
          "Blessed is the one who trusts in the Lord, whose confidence is in him.",
      "title": "- Jeremiah 17:7"
    },
    {
      "verse":
          "The Lord is good to those whose hope is in him, to the one who seeks him.",
      "title": "- Lamentations 3:25"
    },
    {
      "verse": "For nothing will be impossible with God.",
      "title": "- Luke 1:37"
    },
    {
      "verse": "Who of you by worrying can add a single hour to your life?",
      "title": "- Matthew 6:27"
    },
    {
      "verse":
          "And my God will meet all your needs according to the riches of his glory in Christ Jesus.",
      "title": "- Philippians 4:19"
    },
    {
      "verse":
          "Trust in the Lord forever, for the Lord, the Lord himself, is the Rock eternal.",
      "title": "- Isaiah 26:4"
    },
    {
      "verse":
          "The Lord is near to all who call on him, to all who call on him in truth.",
      "title": "- Psalm 145:18"
    },
    {
      "verse":
          "In the same way, the Spirit helps us in our weakness. We do not know what we ought to pray for, but the Spirit himself intercedes for us through wordless groans.",
      "title": "- Romans 8:26"
    },
    {
      "verse": "The Lord is my shepherd; I lack nothing.",
      "title": "- Psalm 23:1"
    },
    {
      "verse":
          "So do not fear, for I am with you; do not be dismayed, for I am your God. I will strengthen you and help you; I will uphold you with my righteous right hand.",
      "title": "- Isaiah 41:10"
    },
    {
      "verse":
          "For we do not have a high priest who is unable to empathize with our weaknesses, but we have one who has been tempted in every way, just as we are—yet he did not sin.",
      "title": "- Hebrews 4:15"
    },
    {
      "verse":
          "Be strong and courageous. Do not be afraid; do not be discouraged, for the Lord your God will be with you wherever you go.",
      "title": "- Joshua 1:9"
    },
    {
      "verse":
          "For the Lord God is a sun and shield; the Lord will give grace and glory; no good thing will He withhold from those who walk uprightly.",
      "title": "- Psalm 84:11"
    },
    {
      "verse":
          "Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God.",
      "title": "- Philippians 4:6"
    },
    {
      "verse": "I will never leave you nor forsake you.",
      "title": "- Hebrews 13:5"
    },
    {
      "verse":
          "In all your ways acknowledge him, and he will make your paths straight.",
      "title": "- Proverbs 3:6"
    },
    {
      "verse":
          "Fear not, for I am with you; I have called you by your name, you are mine.",
      "title": "- Isaiah 43:1"
    },
    {
      "verse":
          "For I am the Lord your God who takes hold of your right hand and says to you, Do not fear; I will help you.",
      "title": "- Isaiah 41:13"
    },
    {
      "verse":
          "But the Lord is faithful, and he will strengthen you and protect you from the evil one.",
      "title": "- 2 Thessalonians 3:3"
    },
    {
      "verse":
          "You will keep in perfect peace those whose minds are steadfast because they trust in you.",
      "title": "- Isaiah 26:3"
    },
    {
      "verse": "But the one who perseveres to the end will be saved.",
      "title": "- Matthew 24:13"
    },
    {
      "verse":
          "In all things God works for the good of those who love him, who have been called according to his purpose.",
      "title": "- Romans 8:28"
    }
  ];
  int currentIndexfv = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexfv = prefs.getInt('currentIndexfv') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexfv', currentIndexfv);
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
            'Faith and Trust',
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
                          verses[currentIndexfv]["title"] ??
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
                          verses[currentIndexfv]["verse"]!,
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
                          color: Color(0xFF262626),
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
                              currentIndexfv = (currentIndexfv - 1) %
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
                          color: Color(0xFF262626),
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
                              currentIndexfv = (currentIndexfv + 1) %
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
