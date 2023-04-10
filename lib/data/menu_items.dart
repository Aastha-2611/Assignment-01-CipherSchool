import 'package:demoscreen/models/menuItem.dart';

import 'package:flutter/material.dart';

class MenuItems {
  static const List<MenuItem> itemsTop = [home];
  static const List<MenuItem> itemsMid = [
    creatorAccess,
    liveReviews,
    community,
    exploreCourses,
    signIn
  ];

  static const home = MenuItem(text: 'Home');
  static const creatorAccess = MenuItem(text: 'Creator Access');
  static const liveReviews = MenuItem(text: 'Live Reviews');
  static const community = MenuItem(text: 'Community');
  static const exploreCourses = MenuItem(text: 'Explore Courses');
  static const signIn = MenuItem(text: 'Sign In');
}

class BottomItems {
  static const List<BottomItem> bottomList = [home, courses, trending, profile];
  static const home = BottomItem(text: 'Home', icon: Icon(Icons.home));
  static const courses = BottomItem(
      text: 'Courses', icon: Icon(Icons.align_vertical_bottom_rounded));
  static const trending =
      BottomItem(text: 'Trending', icon: Icon(Icons.explore));
  static const profile =
      BottomItem(text: 'My Profile', icon: Icon(Icons.person_2_rounded));
}

class CourseMenuItems {
  static const List<MenuItem> courseItems = [
    app,
    web,
    game,
    dsa,
    progrs,
    ml,
    datasci,
    others
  ];

  static const app = MenuItem(text: 'App Development');
  static const web = MenuItem(text: 'Web Development');
  static const game = MenuItem(text: 'Game Development');
  static const dsa = MenuItem(text: 'Data Structures');
  static const progrs = MenuItem(text: 'Programming');
  static const ml = MenuItem(text: 'Machine Learning');
  static const datasci = MenuItem(text: 'Data Science');
  static const others = MenuItem(text: 'Others');
}
