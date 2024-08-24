import 'package:fajaralhijr_github_io/models/skill_model.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:flutter/material.dart';

class TSkillCard extends StatefulWidget {
  final SkillModel skill;
  final double size;

  const TSkillCard({super.key, required this.skill, required this.size});

  @override
  State<TSkillCard> createState() => _TSkillCardState();
}

class _TSkillCardState extends State<TSkillCard> {
  Color color = kLightDarkColor;
  double height = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MouseRegion(
          onEnter: (_) {
            setState(
              () {
                color = const Color(0xff15202B);
              },
            );
          },
          onExit: (_) {
            setState(
              () {
                color = kLightDarkColor;
              },
            );
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 750),
            curve: Curves.bounceOut,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(3, 5),
                  color: kBlackColor.withOpacity(.1),
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Container(
              margin: const EdgeInsets.all(30.0),
              child: Image.network(
                widget.skill.iconUrl,
              ),
            ),
          ),
        ),
        Text(widget.skill.name, style: kMiniTitleTextStyleWhite),
        const SizedBox(),
        const SizedBox(),
      ],
    );
  }
}
