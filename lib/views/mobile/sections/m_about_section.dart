import 'package:fajaralhijr_github_io/controllers/about_controller.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/about_card.dart';
import 'package:fajaralhijr_github_io/widgets/title_section.dart';
import 'package:flutter/material.dart';

class MAboutSection extends StatelessWidget {
  const MAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    AboutController _aboutController = AboutController();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: double.infinity,
      child: Column(
        children: [
          TitleSection(
            title: texts.general.title_about_section,
            isDesktop: false,
          ),
          MediaQuery.of(context).size.width >= 990
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
                      width: 60,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              _aboutController.aboutMe,
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
                      padding: const EdgeInsets.symmetric(vertical: 40),
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
