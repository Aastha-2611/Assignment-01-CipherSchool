import 'package:demoscreen/data/menu_items.dart';
import 'package:demoscreen/models/menuItem.dart';
import 'package:demoscreen/pages/home.dart';
import 'package:flutter/material.dart';

class MyPopUpMenu extends StatefulWidget {
  const MyPopUpMenu({super.key});

  @override
  State<MyPopUpMenu> createState() => _MyPopUpMenuState();
}

class _MyPopUpMenuState extends State<MyPopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuItem>(
      position: PopupMenuPosition.under,
      offset: Offset(10, 10),
      constraints: const BoxConstraints.expand(width: 500, height: 250),
      onSelected: (item) => onSelected(context, item),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      itemBuilder: (context) => [
        ...MenuItems.itemsTop.map((e) => PopupMenuItem(
                child: Text(
              e.text,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(243, 145, 46, 50)),
            ))),
        ...MenuItems.itemsMid.map(buildItem).toList(),
      ],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/images/menu.png'),
      ),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) {
    return PopupMenuItem(child: Text(item.text));
  }

  void onSelected(BuildContext context, MenuItem item) {}
}
