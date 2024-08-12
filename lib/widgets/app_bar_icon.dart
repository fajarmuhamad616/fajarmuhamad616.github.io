import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final IconData icon;
  final Function() onClick;

  const AppBarIcon({
    super.key,
    required this.icon,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 45,
        width: 45,
        decoration: const BoxDecoration(
          color: kDarkColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
