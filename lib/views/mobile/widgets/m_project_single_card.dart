import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/widgets/custom_chip.dart';
import 'package:fajaralhijr_github_io/widgets/project_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:fajaralhijr_github_io/models/project_model.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MProjectSingleCard extends StatelessWidget {
  final ProjectModel project;

  const MProjectSingleCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 40.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 6.0),
            width: double.infinity,
            height: _screenWidth * .521,
            decoration: BoxDecoration(
              color: kLightDarkColor,
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                project.cover,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      project.name,
                      style: kMiniTitleTextStyleWhite.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                project.description,
                style: kNormalTextStyleGrey,
              ),
              const SizedBox(height: 10),
              Wrap(
                runSpacing: 10.0,
                children:
                    project.tech.map((tech) => CustomChip(name: tech)).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ProjectIconBtn(
                      icon: MdiIcons.github,
                      link: project.githubLink,
                      padding: 4),
                  ProjectIconBtn(
                      icon: MdiIcons.link,
                      link: project.externalLink,
                      padding: 4),
                  ProjectIconBtn(
                      icon: MdiIcons.googlePlay,
                      link: project.playstoreLink,
                      padding: 4),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
