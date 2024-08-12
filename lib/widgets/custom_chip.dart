import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String name;
  const CustomChip({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(.3),
        border: Border.all(
          color: Colors.green,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(name),
    );
  }
}
