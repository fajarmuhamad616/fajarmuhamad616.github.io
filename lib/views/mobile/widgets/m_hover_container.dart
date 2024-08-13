import 'package:flutter/material.dart';

class MHoverContainer extends StatefulWidget {
  final Widget child;
  final Function() onClick;
  const MHoverContainer({
    super.key,
    required this.child,
    required this.onClick,
  });

  @override
  State<MHoverContainer> createState() => _MHoverContainerState();
}

class _MHoverContainerState extends State<MHoverContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onClick,
        child: AnimatedContainer(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          duration: const Duration(seconds: 2),
          curve: Curves.ease,
          color: _isHovered ? const Color(0xff15202B) : null,
          width: double.infinity,
          child: widget.child,
        ),
      ),
    );
  }
}
