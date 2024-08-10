import 'package:flutter/material.dart';

class CustomButtonLocaleUtil extends StatelessWidget {
  final String hint;
  final Widget icon;
  final Function() click;

  const CustomButtonLocaleUtil({
    super.key,
    required this.hint,
    required this.icon,
    required this.click,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: hint,
      child: GestureDetector(
        onTap: click,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 45,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.black87,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
            child: icon,
          ),
        ),
      ),
    );
  }
}
