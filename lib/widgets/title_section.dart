import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final bool isDesktop;
  const TitleSection({
    super.key,
    required this.title,
    required this.isDesktop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50.0),
      child: Column(
        children: [
          Text(
            title,
            style: kMiniTitleTextStyleWhite.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: isDesktop ? 25 : 20,
            ),
          ),
          const SizedBox(height: 5.0),
          Container(
            color: kPrimaryColor,
            height: 4,
            width: 80,
          ),
        ],
      ),
    );
  }
}
