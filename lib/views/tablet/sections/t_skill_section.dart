import 'package:fajaralhijr_github_io/controllers/skill_controller.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/views/tablet/widgets/t_skill_card.dart';
import 'package:fajaralhijr_github_io/widgets/title_section.dart';
import 'package:flutter/material.dart';

class TSkillSection extends StatelessWidget {
  const TSkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    SkillController _skillController = SkillController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: double.infinity,
      child: Column(
        children: [
          TitleSection(
            title: texts.general.title_skill_section,
            isDesktop: false,
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 180 / 180,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 20.0,
            ),
            itemBuilder: (context, index) => TSkillCard(
              skill: _skillController.skills[index],
              size: MediaQuery.of(context).size.height / 6,
            ),
            itemCount: _skillController.skills.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
