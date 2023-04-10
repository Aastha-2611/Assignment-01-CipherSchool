import 'package:demoscreen/data/menu_items.dart';
import 'package:demoscreen/models/menuItem.dart';
import 'package:demoscreen/pages/course.dart';
import 'package:demoscreen/pages/home.dart';
import 'package:demoscreen/theme/theme_manage.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  int currentIndex;

  MyNavigationBar({required this.currentIndex, super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: widget.currentIndex,
        items: [
          ...BottomItems.bottomList.map(buildBottomList).toList(),
        ],
        onTap: (index) {
          setState(() {
            widget.currentIndex = index;
          });
          if (index == 0)
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Home()));
          else if (index == 1)
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Courses()));
        },
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromRGBO(243, 145, 46, 50),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  BottomNavigationBarItem buildBottomList(BottomItem item) {
    return BottomNavigationBarItem(
      icon: item.icon,
      label: item.text,
    );
  }
}
