import 'package:fajaralhijr_github_io/utils/fonts_util.dart';
import 'package:flutter/material.dart';

class TextHoverNavigationTopUtil extends StatefulWidget {
  final String text;
  final Function()? onClick;
  final double width;
  const TextHoverNavigationTopUtil({
    super.key,
    required this.text,
    this.onClick,
    this.width = 0,
  });

  @override
  State<TextHoverNavigationTopUtil> createState() =>
      _TextHoverNavigationTopUtilState();
}

class _TextHoverNavigationTopUtilState
    extends State<TextHoverNavigationTopUtil> {
  Color color = Colors.white;
  FontWeight? _fontWeight;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(
          () {
            color = Colors.green;
            _fontWeight = FontWeight.bold;
          },
        );
      },
      onExit: (_) {
        setState(
          () {
            color = Colors.white;
            _fontWeight = null;
          },
        );
      },
      child: GestureDetector(
        onTap: widget.onClick,
        child: Text(
          widget.text,
          style: kMiniTitleTextStyleWhite.copyWith(
            color: color,
            fontWeight: _fontWeight,
          ),
        ),
      ),
    );
  }
}
