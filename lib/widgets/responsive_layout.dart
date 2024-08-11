import 'package:fajaralhijr_github_io/values/responsive_breakpoints.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;
  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
    required this.tabletBody,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimension) {
        if (dimension.maxWidth < kTabletBreakpoint) {
          return widget.mobileBody;
        } else if (dimension.maxWidth >= kTabletBreakpoint &&
            dimension.maxWidth < kCustomSize) {
          return widget.tabletBody;
        } else if (dimension.maxWidth >= kCustomSize) {
          return widget.desktopBody;
        } else {
          return widget.desktopBody;
        }
      },
    );
  }
}
