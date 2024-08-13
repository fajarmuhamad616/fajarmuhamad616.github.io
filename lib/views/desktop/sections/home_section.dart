import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/widgets/avatar_circle_glow.dart';
import 'package:fajaralhijr_github_io/enum/device.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/custom_button.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/icon_home_hover.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeSection extends StatefulWidget {
  final Function() scrollToProjects;
  const HomeSection({
    super.key,
    required this.scrollToProjects,
  });

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;
    if (_screenHeight < 700) {
      _screenHeight = 700;
    }
    return Container(
      margin: const EdgeInsets.only(top: 70),
      padding: EdgeInsets.symmetric(
        horizontal: _screenWidth * .1172,
        vertical: _screenHeight * .1,
      ),
      width: double.infinity,
      height: _screenHeight * .8,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      texts.general.hi_home_section,
                      style: kTitleNameTextStyle,
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      totalRepeatCount: 1,
                      animatedTexts: [
                        ColorizeAnimatedText(
                          texts.general.introduce_home_my_name,
                          textStyle: kTitleNameTextStyle,
                          colors: [
                            Colors.white,
                            Colors.white24,
                            Colors.white10,
                          ],
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "I am a ",
                      style: kTitleTextStyle,
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      pause: const Duration(seconds: 0),
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "Software",
                          speed: const Duration(milliseconds: 200),
                          textStyle: kTitleTextStyle.copyWith(
                            color: Colors.green,
                            shadows: [
                              Shadow(
                                blurRadius: 7.0,
                                color: Colors.green.shade900,
                              ),
                            ],
                          ),
                        ),
                        TypewriterAnimatedText(
                          "Java",
                          speed: const Duration(milliseconds: 200),
                          textStyle: kTitleTextStyle.copyWith(
                            color: Colors.red,
                            shadows: [
                              Shadow(
                                blurRadius: 7.0,
                                color: Colors.red.shade900,
                              ),
                            ],
                          ),
                        ),
                        TypewriterAnimatedText(
                          "Flutter",
                          speed: const Duration(milliseconds: 200),
                          textStyle: kTitleTextStyle.copyWith(
                            color: Colors.blue,
                            shadows: [
                              Shadow(
                                blurRadius: 7.0,
                                color: Colors.blue.shade900,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  'Engineer.',
                  style: kTitleTextStyle.copyWith(
                    fontSize: _screenWidth * .035,
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  texts.general.introduce_home_section1,
                  style: kNormalTextStyleGrey,
                ),
                const SizedBox(height: 5.0),
                Text(
                  texts.general.introduce_home_section2,
                ),
                const SizedBox(height: 25.0),
                CustomButtonUtil(
                  text: texts.general.browse_projects_home_section,
                  icon: MdiIcons.folder,
                  onClick: widget.scrollToProjects,
                ),
                const SizedBox(height: 25.0),
                Row(
                  children: [
                    IconHomeHoverUtil(
                      icon: MdiIcons.linkedin,
                      color: kDarkBlueColor,
                    ),
                    IconHomeHoverUtil(
                      icon: MdiIcons.github,
                      color: kBlackColor,
                    ),
                    IconHomeHoverUtil(
                      icon: MdiIcons.instagram,
                      color: kPinkColor,
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(70),
              child: AvatarCircleGlow(
                screenWidth: _screenWidth,
                device: Device.desktop,
              ),
            ),
          )
        ],
      ),
    );
  }
}
