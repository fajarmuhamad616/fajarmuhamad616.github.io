import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/utils/fonts_util.dart';
import 'package:fajaralhijr_github_io/views/widgets_utils/avatar_circle_glow_util.dart';
import 'package:fajaralhijr_github_io/enum/device_enum.dart';
import 'package:fajaralhijr_github_io/views/widgets_utils/custom_button_util.dart';
import 'package:fajaralhijr_github_io/views/widgets_utils/icon_home_hover_util.dart';
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
                      "Hi, my name ",
                      style: kTitleNameTextStyle,
                    ),
                    AnimatedTextKit(
                      repeatForever: false,
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
                        FlickerAnimatedText(
                          "Software",
                          speed: const Duration(seconds: 3),
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
                        FlickerAnimatedText(
                          "Java",
                          speed: const Duration(seconds: 3),
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
                        FlickerAnimatedText(
                          "Flutter",
                          speed: const Duration(seconds: 3),
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
                      color: Colors.blue.shade900,
                    ),
                    IconHomeHoverUtil(
                      icon: MdiIcons.github,
                      color: Colors.black87,
                    ),
                    IconHomeHoverUtil(
                      icon: MdiIcons.instagram,
                      color: Colors.pink.shade900,
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(70),
              child: AvatarCircleGlowUtil(
                screenWidth: _screenWidth,
                device: DeviceEnum.DESKTOP,
              ),
            ),
          )
        ],
      ),
    );
  }
}
