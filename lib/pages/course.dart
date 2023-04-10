import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:demoscreen/data/cards.dart';
import 'package:demoscreen/data/menu_items.dart';
import 'package:demoscreen/models/bottomBar.dart';
import 'package:demoscreen/models/carouselCourse.dart';
import 'package:demoscreen/models/menuItem.dart';
import 'package:demoscreen/theme/theme_manage.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Courses extends StatefulWidget {
  Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
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
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        actions: [
          PopupMenuButton<MenuItem>(
            position: PopupMenuPosition.under,
            offset: Offset(10, 10),
            constraints: const BoxConstraints.expand(width: 250, height: 250),
            onSelected: (item) => onSelected(context, item),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            itemBuilder: (context) => [
              ...CourseMenuItems.courseItems.map(buildItem).toList(),
            ],
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.explore,
                    color: Colors.black,
                  ),
                  Text(
                    'Browse',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined),
            color: Colors.black,
          ),
          SizedBox(
            width: 2,
          ),
          Switch(value: true, onChanged: (newValue) {}),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselCards(itemList: CourseCards.cardList),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      'Recommended Courses',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Text(
                            'popular ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Icon(Icons.keyboard_arrow_down_rounded),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                    viewportFraction: 0.5,
                    // autoPlay: true,
                    reverse: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 300)),
                itemCount: RecommendedCards.cardList.length,
                itemBuilder: (context, index, realIndex) {
                  final url = RecommendedCards.cardList[index];
                  return buildImageNow(url, index);
                },
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Latest Videos',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 16),
              CarouselSlider.builder(
                options: CarouselOptions(
                    viewportFraction: 0.5,
                    // autoPlay: true,
                    //  reverse: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 300)),
                itemCount: LatestCards.cardList.length,
                itemBuilder: (context, index, realIndex) {
                  final url = LatestCards.cardList[index];
                  return buildImageNow(url, index);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(
        currentIndex: 1,
      ),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) {
    return PopupMenuItem(child: Text(item.text));
  }

  void onSelected(BuildContext context, MenuItem item) {}

  Widget buildImageNow(String url, int index) => Container(
        width: 160,
        height: 200,
        padding: EdgeInsets.all(4),
        child: FittedBox(fit: BoxFit.cover, child: Image.asset(url)),
      );
}
