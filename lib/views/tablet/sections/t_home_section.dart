import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fajaralhijr_github_io/enum/device.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/custom_button.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/icon_home_hover.dart';
import 'package:fajaralhijr_github_io/widgets/avatar_circle_glow.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class THomeSection extends StatefulWidget {
  final Function() scrollToProject;
  const THomeSection({super.key, required this.scrollToProject});

  @override
  State<THomeSection> createState() => _THomeSectionState();
}

class _THomeSectionState extends State<THomeSection> {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90.0, vertical: 70.0),
      margin: const EdgeInsets.only(top: 50.0),
      width: double.infinity,
      child: Column(
        children: [
          _screenWidth <= 860
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AvatarCircleGlow(screenWidth: 0, device: Device.tablet),
                  ],
                )
              : const Text(''),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                              textStyle:
                                  kTitleNameTextStyle.copyWith(fontSize: 17.0),
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
                                fontSize: 33.0,
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
                                fontSize: 33.0,
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
                                fontSize: 33.0,
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
                      onClick: widget.scrollToProject,
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
              _screenWidth >= 860
                  ? const Expanded(
                      child: AvatarCircleGlow(
                        screenWidth: 0,
                        device: Device.tablet,
                      ),
                    )
                  : const Text(''),
            ],
          ),
        ],
      ),
    );
  }
}
