import 'package:fajaralhijr_github_io/utils/external_app_util.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/icon_hover.dart';
import 'package:flutter/material.dart';

class ProjectIconBtn extends StatelessWidget {
  final IconData icon;
  final String link;
  final double? padding;

  const ProjectIconBtn({
    super.key,
    required this.icon,
    required this.link,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: link.isNotEmpty,
      child: IconHoverUtil(
        icon: icon,
        color: kPrimaryColor,
        click: () => {
          if (link.isNotEmpty) ExternalAppUtil.redirectToLink(url: link),
        },
        padding: padding ?? 0,
      ),
    );
  }
}
