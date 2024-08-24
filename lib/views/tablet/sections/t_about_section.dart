import 'package:fajaralhijr_github_io/controllers/about_controller.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/about_card.dart';
import 'package:fajaralhijr_github_io/widgets/title_section.dart';
import 'package:flutter/material.dart';

class TAboutSection extends StatelessWidget {
  const TAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    AboutController _aboutController = AboutController();
    double _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90.0, vertical: 50.0),
      width: double.infinity,
      child: Column(
        children: [
          TitleSection(
              title: texts.general.title_about_section, isDesktop: false),
          _screenWidth >= 990
              ? Row(
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
                      width: 60.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Text(
                              texts.about.about_me,
                              style: kNormalTextStyleGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: Text(
                        texts.about.about_me,
                        style: kNormalTextStyleGrey,
                      ),
                    ),
                    AboutCard(model: _aboutController.aboutCardModel(0)),
                    AboutCard(model: _aboutController.aboutCardModel(1)),
                    AboutCard(model: _aboutController.aboutCardModel(2)),
                    AboutCard(model: _aboutController.aboutCardModel(3)),
                    AboutCard(model: _aboutController.aboutCardModel(4)),
                  ],
                ),
        ],
      ),
    );
  }
}
