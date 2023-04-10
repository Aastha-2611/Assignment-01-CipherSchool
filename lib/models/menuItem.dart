import 'package:flutter/material.dart';

class MenuItem {
  final String text;
  const MenuItem({required this.text});
}

class BottomItem {
  final String text;
  final Icon icon;

  const BottomItem({required this.text, required this.icon});
}
