import 'package:flutter/cupertino.dart';
import 'package:moncheri/verses.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoveVerse extends StatefulWidget {
  const LoveVerse({super.key});

  @override
  State<LoveVerse> createState() => _LoveVerseState();
}

class _LoveVerseState extends State<LoveVerse> {
  List<Map<String, String>> verses = [
    {
      "verse": "Let all that you do be done in love.",
      "title": "- 1 Corinthians 16:14"
    },
    {"verse": "Love your neighbor as yourself.", "title": "- Matthew 22:39"},
    {
      "verse":
          "Beloved, let us love one another, for love is from God; and everyone who loves is born of God and knows God.",
      "title": "- 1 John 4:7"
    },
    {
      "verse":
          "This is my commandment, that you love one another as I have loved you.",
      "title": "- John 15:12"
    },
    {
      "verse":
          "Greater love has no one than this: to lay down one’s life for one’s friends.",
      "title": "- John 15:13"
    },
    {
      "verse":
          "And now these three remain: faith, hope and love. But the greatest of these is love.",
      "title": "- 1 Corinthians 13:13"
    },
    {
      "verse":
          "Love is patient, love is kind. It does not envy, it does not boast, it is not proud.",
      "title": "- 1 Corinthians 13:4"
    },
    {
      "verse":
          "Let us not love with words or speech but with actions and in truth.",
      "title": "- 1 John 3:18"
    },
    {
      "verse": "Do to others as you would have them do to you.",
      "title": "- Luke 6:31"
    },
    {
      "verse":
          "Love the Lord your God with all your heart and with all your soul and with all your mind.",
      "title": "- Matthew 22:37"
    },
    {
      "verse":
          "Be kind to one another, tenderhearted, forgiving one another, as God in Christ forgave you.",
      "title": "- Ephesians 4:32"
    },
    {
      "verse":
          "Above all, love each other deeply, because love covers over a multitude of sins.",
      "title": "- 1 Peter 4:8"
    },
    {"verse": "Love is the fulfillment of the law.", "title": "- Romans 13:10"},
    {
      "verse":
          "Let no debt remain outstanding, except the continuing debt to love one another, for whoever loves others has fulfilled the law.",
      "title": "- Romans 13:8"
    },
    {
      "verse": "Love your enemies and pray for those who persecute you.",
      "title": "- Matthew 5:44"
    },
    {
      "verse":
          "Be completely humble and gentle; be patient, bearing with one another in love.",
      "title": "- Ephesians 4:2"
    },
    {
      "verse": "Do not be overcome by evil, but overcome evil with good.",
      "title": "- Romans 12:21"
    },
    {
      "verse":
          "The Lord is gracious and compassionate, slow to anger and rich in love.",
      "title": "- Psalm 145:8"
    },
    {
      "verse":
          "A new command I give you: Love one another. As I have loved you, so you must love one another.",
      "title": "- John 13:34"
    },
    {
      "verse":
          "He has shown you, O mortal, what is good. And what does the Lord require of you? To act justly and to love mercy and to walk humbly with your God.",
      "title": "- Micah 6:8"
    },
    {
      "verse":
          "The Lord is compassionate and gracious, slow to anger, abounding in love.",
      "title": "- Psalm 103:8"
    },
    {
      "verse":
          "Be devoted to one another in love. Honor one another above yourselves.",
      "title": "- Romans 12:10"
    },
    {
      "verse":
          "But the fruit of the Spirit is love, joy, peace, forbearance, kindness, goodness, faithfulness, gentleness and self-control.",
      "title": "- Galatians 5:22-23"
    },
    {
      "verse":
          "Dear friends, let us love one another, for love comes from God. Everyone who loves has been born of God and knows God.",
      "title": "- 1 John 4:7"
    },
    {
      "verse":
          "Love does no harm to a neighbor. Therefore love is the fulfillment of the law.",
      "title": "- Romans 13:10"
    },
    {
      "verse":
          "And over all these virtues put on love, which binds them all together in perfect unity.",
      "title": "- Colossians 3:14"
    },
    {
      "verse": "My command is this: Love each other as I have loved you.",
      "title": "- John 15:12"
    },
    {
      "verse":
          "Anyone who does not know love does not know God, because God is love.",
      "title": "- 1 John 4:8"
    },
    {
      "verse":
          "Therefore, as God’s chosen people, holy and dearly loved, clothe yourselves with compassion, kindness, humility, gentleness and patience.",
      "title": "- Colossians 3:12"
    },
    {
      "verse":
          "If I speak in the tongues of men or of angels, but do not have love, I am only a resounding gong or a clanging cymbal.",
      "title": "- 1 Corinthians 13:1"
    },
    {"verse": "Do everything in love.", "title": "- 1 Corinthians 16:14"},
    {
      "verse":
          "By this everyone will know that you are my disciples, if you love one another.",
      "title": "- John 13:35"
    },
    {
      "verse":
          "Let us love, not with words or speech, but with actions and in truth.",
      "title": "- 1 John 3:18"
    },
    {
      "verse":
          "If anyone says, 'I love God,' yet hates a brother or sister, they are a liar. For whoever does not love their brother and sister, whom they have seen, cannot love God, whom they have not seen.",
      "title": "- 1 John 4:20"
    },
    {"verse": "Love one another as I have loved you.", "title": "- John 13:34"},
    {
      "verse":
          "And this is my prayer: that your love may abound more and more in knowledge and depth of insight.",
      "title": "- Philippians 1:9"
    },
    {
      "verse":
          "Do not merely look out for your own personal interests, but also for the interests of others.",
      "title": "- Philippians 2:4"
    },
    {
      "verse":
          "Let us not become weary in doing good, for at the proper time we will reap a harvest if we do not give up.",
      "title": "- Galatians 6:9"
    },
    {"verse": "Forgive as the Lord forgave you.", "title": "- Colossians 3:13"},
    {
      "verse":
          "Be kind and compassionate to one another, forgiving each other, just as in Christ God forgave you.",
      "title": "- Ephesians 4:32"
    },
    {
      "verse":
          "I am giving you a new commandment, that you love one another; just as I have loved you, you also are to love one another.",
      "title": "- John 13:34"
    },
    {
      "verse":
          "Love the Lord your God with all your heart and with all your soul and with all your strength.",
      "title": "- Deuteronomy 6:5"
    },
    {
      "verse": "Whoever does not love does not know God, because God is love.",
      "title": "- 1 John 4:8"
    },
    {
      "verse":
          "The Lord watches over all who love him, but all the wicked he will destroy.",
      "title": "- Psalm 145:20"
    },
    {"verse": "Do everything in love.", "title": "- 1 Corinthians 16:14"},
    {
      "verse":
          "Let no unwholesome talk come out of your mouths, but only what is helpful for building others up according to their needs, that it may benefit those who listen.",
      "title": "- Ephesians 4:29"
    },
    {
      "verse": "Be merciful, just as your Father is merciful.",
      "title": "- Luke 6:36"
    },
    {
      "verse":
          "Love your enemies, do good to them, and lend to them without expecting to get anything back. Then your reward will be great, and you will be children of the Most High, because he is kind to the ungrateful and wicked.",
      "title": "- Luke 6:35"
    }
  ];

  int currentIndexlv = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexlv = prefs.getInt('currentIndexlv') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexlv', currentIndexlv);
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
            'Love and Compassion',
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
                          verses[currentIndexlv]["title"] ??
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
                          verses[currentIndexlv]["verse"]!,
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
                              currentIndexlv = (currentIndexlv - 1) %
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
                              currentIndexlv = (currentIndexlv + 1) %
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
