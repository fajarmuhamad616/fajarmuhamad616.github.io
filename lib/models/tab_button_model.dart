import 'package:flutter/widgets.dart';

class TabButtonModel {
  String title;
  IconData icon;
  bool isSelected;

  TabButtonModel({
    required this.title,
    required this.icon,
    this.isSelected = false,
  });
}
