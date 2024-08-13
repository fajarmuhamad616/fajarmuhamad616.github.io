import 'package:fajaralhijr_github_io/models/skill_model.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:flutter/material.dart';

class MSkillCard extends StatefulWidget {
  final SkillModel skill;
  final double size;

  const MSkillCard({
    super.key,
    required this.skill,
    required this.size,
  });

  @override
  State<MSkillCard> createState() => _MSkillCardState();
}

class _MSkillCardState extends State<MSkillCard> {
  Color color = kLightDarkColor;
  double height = 0.0;

  @override
  void initState() {
    height = widget.size;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MouseRegion(
          onEnter: (_) {
            setState(
              () {
                if (MediaQuery.of(context).size.width >= 1320) {
                  color = const Color(0xff15202B);
                  if (height > 200) {
                    height = widget.size + 20.0;
                  } else {
                    height = 170;
                  }
                } else {
                  color = const Color(0xff15202B);
                }
              },
            );
          },
          onExit: (_) {
            setState(
              () {
                color = kLightDarkColor;
                height = widget.size;
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
