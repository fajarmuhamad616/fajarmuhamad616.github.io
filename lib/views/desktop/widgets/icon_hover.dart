import 'package:flutter/material.dart';

class IconHoverUtil extends StatefulWidget {
  final IconData icon;
  final Color color;
  final Function() click;
  final double? padding;

  const IconHoverUtil({
    super.key,
    required this.icon,
    required this.color,
    required this.click,
    this.padding = 10,
  });

  @override
  State<IconHoverUtil> createState() => _IconHoverUtilState();
}

class _IconHoverUtilState extends State<IconHoverUtil> {
  Color initialColor = const Color(0xffB3A595);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          initialColor = widget.color;
        });
      },
      onExit: (_) {
        setState(() {
          initialColor = const Color(0xffB3A595);
        });
      },
      child: Padding(
        padding: EdgeInsets.only(left: widget.padding!),
        child: IconButton(
          icon: Icon(widget.icon, size: 23),
          onPressed: widget.click,
          color: initialColor,
        ),
      ),
    );
  }
}
