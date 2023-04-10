import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:demoscreen/data/menu_items.dart';
import 'package:demoscreen/models/bottomBar.dart';
import 'package:demoscreen/models/carousel.dart';
import 'package:demoscreen/models/menuItem.dart';
import 'package:demoscreen/models/popup.dart';
import 'package:demoscreen/theme/theme_manage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        leading: Container(
          padding: EdgeInsets.fromLTRB(12, 8, 2, 8),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/Cipherschools.png'),
          ),
        ),
        title: const Text(
          'CipherSchools',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          MyPopUpMenu(),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Welcome to ",
                          style: TextStyle(
                              wordSpacing: 0.8,
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 2)),
                      TextSpan(
                          text: "the",
                          style: TextStyle(
                              color: Color.fromRGBO(243, 145, 46, 50),
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 2)),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 1, height: 4),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Future',
                      style: TextStyle(
                          color: Color.fromRGBO(243, 145, 46, 50),
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2)),
                  TextSpan(
                      text: " of Learning! ",
                      style: TextStyle(
                          wordSpacing: 0.8,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2)),
                ])),
              ),
              SizedBox(
                width: 1,
                height: 40.0,
              ),
              Text('Start learning by best creators for',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 78, 77, 77),
                      fontWeight: FontWeight.w300,
                      letterSpacing: 2)),
              SizedBox(
                height: 5,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('absolutely free |',
                      textAlign: TextAlign.center,
                      textStyle: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(243, 145, 46, 50),
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2),
                      speed: Duration(milliseconds: 200)),
                ],
                repeatForever: true,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.all(3),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/photo.png'),
                          ),
                        ),
                        Positioned(
                          left: -20,
                          child: Container(
                            margin: EdgeInsets.all(3),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/photo2.png'),
                            ),
                          ),
                        ),
                        Positioned(
                          left: -40,
                          child: Container(
                            margin: EdgeInsets.all(3),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/photo3.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                                text: '50+ \n',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.w800)),
                            TextSpan(
                                text: 'Mentors',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    letterSpacing: 2))
                          ])),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '4.8/5 ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w800)),
                            ])),
                        Row(
                          children: [
                            RatingBarIndicator(
                              rating: 4.5,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Color.fromRGBO(243, 145, 46, 1),
                              ),
                              itemCount: 5,
                              itemSize: 15.0,
                              unratedColor: Colors.white70,
                              direction: Axis.horizontal,
                            ),
                            Text(
                              'ratings',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                height: 40,
                width: 200,
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 145, 46, 1))),
                  onPressed: () {},
                  child: Text(
                    'Start Learning Now ->',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 40),
              MyCarousel(),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '15K+ \n',
                                  style: TextStyle(
                                      fontSize: 26,
                                      color: Color(0xCEF3912E),
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w800)),
                              TextSpan(
                                  text: 'Students',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      letterSpacing: 2))
                            ])),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '10K+ \n',
                                  style: TextStyle(
                                      fontSize: 26,
                                      color: Color(0xCEF3912E),
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w800)),
                              TextSpan(
                                  text: 'Certificates delivered ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      letterSpacing: 2))
                            ])),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(
        currentIndex: 0,
      ),
    );
  }
}
