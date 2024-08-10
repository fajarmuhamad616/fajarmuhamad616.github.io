import 'package:flutter/material.dart';
import 'package:fajaralhijr_github_io/models/project_model.dart';
import 'package:fajaralhijr_github_io/utils/fonts_util.dart';

class SingleProjectCard extends StatelessWidget {
  final ProjectModel proj;

  const SingleProjectCard({super.key, required this.proj});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenWidth <= 1366 ? 210 : 300,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: klightDarkColor,
                image: DecorationImage(
                  image: NetworkImage(proj.cover),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  proj.name,
                  style: kMiniTitleTextStyleGreen.copyWith(fontSize: 18),
                ),
                Text(
                  proj.description,
                  style: kNormalTextStyleGrey,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
