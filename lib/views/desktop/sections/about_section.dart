import 'package:fajaralhijr_github_io/controllers/about_controller.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/about_card.dart';
import 'package:fajaralhijr_github_io/widgets/title_section.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;
    AboutController _aboutController = AboutController();

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _screenWidth * .1172,
        vertical: _screenHeight * .065,
      ),
      width: double.infinity,
      child: Column(
        children: [
          TitleSection(
            title: texts.general.title_about_section,
            isDesktop: true,
          ),
          const SizedBox(
            width: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    AboutCard(model: _aboutController.aboutCardModel(0)),
                    AboutCard(model: _aboutController.aboutCardModel(1)),
                    AboutCard(model: _aboutController.aboutCardModel(2)),
                    AboutCard(model: _aboutController.aboutCardModel(3)),
                    AboutCard(model: _aboutController.aboutCardModel(4)),
                  ],
                ),
              ),
              const SizedBox(
                width: 120,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        _aboutController.aboutMe,
                        style: kNormalTextStyleGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
