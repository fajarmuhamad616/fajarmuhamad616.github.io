import 'package:fajaralhijr_github_io/models/experience_model.dart';
import 'package:flutter/material.dart';

class MProfessionalExperienceTitleText extends StatelessWidget {
  final bool isMobile;
  final ExperienceModel experienceModel;
  const MProfessionalExperienceTitleText({
    super.key,
    required this.isMobile,
    required this.experienceModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    experienceModel.company,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: isMobile ? 14 : 16,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 750),
                    curve: Curves.bounceOut,
                    height: 2,
                    width: experienceModel.isHovered ? 160.0 : 50,
                  ),
                  Text(
                    experienceModel.empType,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
