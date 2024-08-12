import 'package:fajaralhijr_github_io/controllers/skill_controller.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/skill_card.dart';
import 'package:fajaralhijr_github_io/widgets/title_section.dart';
import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    SkillController _skillController = SkillController();
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _screenWidth * .1172,
        vertical: _screenHeight * .0575,
      ),
      width: double.infinity,
      child: Column(
        children: [
          TitleSection(
            title: texts.general.title_skill_section,
            isDesktop: true,
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 180 / 180,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 20.0,
            ),
            itemBuilder: (context, index) => SkillCard(
              skill: _skillController.skills[index],
              size: _screenWidth * .117,
            ),
            itemCount: _skillController.skills.length,
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
