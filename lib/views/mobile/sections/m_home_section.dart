import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fajaralhijr_github_io/enum/device_enum.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/services/message_service.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/custom_button.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/icon_home_hover.dart';
import 'package:fajaralhijr_github_io/widgets/avatar_circle_glow.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MHomeSection extends StatefulWidget {
  const MHomeSection({
    super.key,
  });

  @override
  State<MHomeSection> createState() => _MHomeSectionState();
}

class _MHomeSectionState extends State<MHomeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 50,
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const AvatarCircleGlow(
              screenWidth: 0,
              device: DeviceEnum.MOBILE,
            ),
          ),
          Column(
            children: [
              Text(
                texts.general.hi_home_section,
                style: kTitleNameTextStyle.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0,
                ),
              ),
              Text(
                texts.general.introduce_home_my_name,
                style: kTitleNameTextStyle.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  "I am a ",
                  style: kTitleTextStyle.copyWith(
                    fontSize: 30,
                  ),
                ),
              ),
              AnimatedTextKit(
                repeatForever: true,
                pause: const Duration(seconds: 0),
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Software",
                    speed: const Duration(milliseconds: 200),
                    textStyle: kTitleTextStyle.copyWith(
                      fontSize: 30,
                      fontWeight: MediaQuery.of(context).size.width >= 500
                          ? FontWeight.bold
                          : null,
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
                      fontSize: 30,
                      fontWeight: MediaQuery.of(context).size.width >= 500
                          ? FontWeight.bold
                          : null,
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
                      fontSize: 30,
                      fontWeight: MediaQuery.of(context).size.width >= 500
                          ? FontWeight.bold
                          : null,
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
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            texts.general.introduce_home_section1,
            textAlign: TextAlign.center,
            style: kNormalTextStyleGrey,
          ),
          const SizedBox(height: 10.0),
          Text(
            texts.general.introduce_home_section2,
            textAlign: TextAlign.center,
            style: kNormalTextStyleGrey,
          ),
          const SizedBox(height: 25.0),
          CustomButtonUtil(
            icon: Icons.download_rounded,
            onClick: () => downloadCV(),
            text: texts.tabs.tabs[6],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
