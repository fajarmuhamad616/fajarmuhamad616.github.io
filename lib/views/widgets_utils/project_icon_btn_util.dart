import 'package:fajaralhijr_github_io/utils/external_app_util.dart';
import 'package:fajaralhijr_github_io/views/widgets_utils/icon_hover_util.dart';
import 'package:flutter/material.dart';

class ProjectIconBtn extends StatelessWidget {
  final IconData icon;
  final String link;
  final double? padding;
  final bool isTablet;

  const ProjectIconBtn({
    Key? key,
    required this.icon,
    required this.link,
    this.padding,
    bool? isTablet,
  }) : isTablet = isTablet ?? false;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isTablet ? true : link.isNotEmpty,
      child: IconHoverUtil(
        icon: icon,
        color: Colors.green,
        click: () => {
          if (link.isNotEmpty) ExternalAppUtil.redirectToLink(url: link),
        },
        padding: padding ?? 0,
      ),
    );
  }
}
