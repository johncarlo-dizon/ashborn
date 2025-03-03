import 'package:flutter/cupertino.dart';
import 'package:ashborn/category.dart';
import 'package:ashborn/faithverse.dart';
import 'package:ashborn/hopeverse.dart';
import 'package:ashborn/loveverse.dart';
import 'package:ashborn/strengthverse.dart';

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
                      color: Color(0xFFd9d9d9),
                      borderRadius: BorderRadius.circular(10),
                      image: MediaQuery.of(context).size.width > 320
                          ? DecorationImage(
                        image: AssetImage('images/a1.png'),
                        alignment: Alignment.centerRight,
                        fit: BoxFit.contain,
                      )
                          : null,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: CupertinoButton(
                          child: Text(
                            'Faith and Trust',
                            style: TextStyle(color: Color(0xFF262626)),
                          ),
                          alignment: Alignment.topLeft,
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
                      color: Color(0xFFf2f2f2),
                      borderRadius: BorderRadius.circular(10),
                      image: MediaQuery.of(context).size.width > 320
                          ? DecorationImage(
                        image: AssetImage('images/a3.png'),
                        alignment: Alignment.centerRight,
                        fit: BoxFit.contain,
                      )
                          : null,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: CupertinoButton(
                          child: Text(
                            'Love and Compassion',
                            style: TextStyle(color: Color(0xFF0d0d0d)),
                          ),
                          alignment: Alignment.topLeft,
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
                      color: Color(0xFFd9d9d9),
                      borderRadius: BorderRadius.circular(10),
                      image: MediaQuery.of(context).size.width > 320
                          ? DecorationImage(
                        image: AssetImage('images/a2.png'),
                        alignment: Alignment.centerRight,
                        fit: BoxFit.contain,
                      )
                          : null,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: CupertinoButton(
                          child: Text(
                            'Hope and Heartening',
                            style: TextStyle(color: Color(0xFF262626)),
                          ),
                          alignment: Alignment.topLeft,
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
                      color: Color(0xFFf2f2f2),
                      borderRadius: BorderRadius.circular(10),
                      image: MediaQuery.of(context).size.width > 320
                          ? DecorationImage(
                        image: AssetImage('images/a4.png'),
                        alignment: Alignment.centerRight,
                        fit: BoxFit.contain,
                      )
                          : null,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: CupertinoButton(
                          child: Text(
                            'Strength and Courage',
                            style: TextStyle(color: Color(0xFF0d0d0d)),
                          ),
                          alignment: Alignment.topLeft,
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
