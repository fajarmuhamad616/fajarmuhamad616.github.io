import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/strings.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MFooterSection extends StatefulWidget {
  const MFooterSection({super.key});

  @override
  State<MFooterSection> createState() => _MFooterSectionState();
}

class _MFooterSectionState extends State<MFooterSection> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: kGreyColor.withOpacity(.12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MouseRegion(
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
              onTap: () async {
                await launchUrl(Uri.parse(linkLinkedin));
              },
              child: Text(
                footerSectionAuthorName,
                style: kNormalTextStyleGrey.copyWith(
                  color: _isHovered ? kPrimaryColor : kGreySemiLightColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.5,
                ),
              ),
            ),
          ),
          Text(
            '© 2024 - ${DateTime.now().year} $username. All rights reserved.',
            style: kNormalTextStyleGrey.copyWith(
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
