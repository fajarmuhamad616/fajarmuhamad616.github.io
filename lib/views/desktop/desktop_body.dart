import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:country_flags/country_flags.dart';
import 'package:fajaralhijr_github_io/utils/external_app_util.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/strings.dart';
import 'package:fajaralhijr_github_io/views/desktop/sections/footer_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:fajaralhijr_github_io/controllers/navigation_top_controller.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/services/message_service.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/views/desktop/sections/about_section.dart';
import 'package:fajaralhijr_github_io/views/desktop/sections/contact_section.dart';
import 'package:fajaralhijr_github_io/views/desktop/sections/home_section.dart';
import 'package:fajaralhijr_github_io/views/desktop/sections/professional_experience_section.dart';
import 'package:fajaralhijr_github_io/views/desktop/sections/projects_section.dart';
import 'package:fajaralhijr_github_io/views/desktop/sections/skills_section.dart';
import 'package:fajaralhijr_github_io/widgets/custom_button_locale.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/custom_button.dart';
import 'package:fajaralhijr_github_io/widgets/text_hover_navigation_top.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  final contactKey = GlobalKey();
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final experienceKey = GlobalKey();
  double homeWidth = 0;
  double aboutWidth = 0;
  double skillsWidth = 0;
  double experienceWidth = 0;
  double projectsWidth = 0;
  double contactWidth = 0;
  final ScrollController _scrollController = ScrollController();
  final NavigationTopController _navigationTopController =
      NavigationTopController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kPrimaryColor,
        onPressed: () async {
          ExternalAppUtil.redirectToLink(url: linkWhatsApp);
        },
        label: Text("Chat ${name.split(" ").first}"),
        icon: Icon(
          MdiIcons.whatsapp,
          size: 30,
          color: kLightColor,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                HomeSection(
                  key: homeKey,
                  scrollToProjects: () async {
                    await scrollToItem(projectsKey);
                  },
                ),
                AboutSection(
                  key: aboutKey,
                ),
                SkillsSection(
                  key: skillsKey,
                ),
                ProfessionalExperienceSection(
                  key: experienceKey,
                ),
                ProjectsSection(
                  key: projectsKey,
                ),
                ContactSection(
                  key: contactKey,
                ),
                const FooterSection(),
              ],
            ),
          ),
          _topNavigationBar(_screenWidth),
        ],
      ),
    );
  }

  Positioned _topNavigationBar(double _screenWidth) {
    return Positioned(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        margin: EdgeInsets.symmetric(horizontal: _screenWidth * .059),
        child: BlurryContainer(
          borderRadius: BorderRadius.circular(64),
          color: kDarkColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    scrollToItem(homeKey);
                  },
                  child: const CircleAvatar(
                    foregroundImage: AssetImage('assets/my-profile.jpg'),
                    backgroundColor: kGreySemiLightColor,
                    radius: 23,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'Fajar Muhammad Al-Hijri',
                style: kTextStyleWhite.copyWith(
                  fontSize: 15,
                ),
              ),
              Icon(
                MdiIcons.leaf,
                color: kGreenColor,
              ),
              const Spacer(),
              TextHoverNavigationTopUtil(
                text: _navigationTopController.navigation(0),
                onClick: () => scrollToItem(homeKey),
                width: homeWidth,
              ),
              const SizedBox(
                width: 18.0,
              ),
              TextHoverNavigationTopUtil(
                text: _navigationTopController.navigation(1),
                onClick: () => scrollToItem(aboutKey),
                width: aboutWidth,
              ),
              const SizedBox(
                width: 18.0,
              ),
              TextHoverNavigationTopUtil(
                text: _navigationTopController.navigation(2),
                onClick: () => scrollToItem(skillsKey),
                width: skillsWidth,
              ),
              const SizedBox(
                width: 18.0,
              ),
              TextHoverNavigationTopUtil(
                text: _navigationTopController.navigation(3),
                onClick: () => scrollToItem(experienceKey),
                width: experienceWidth,
              ),
              const SizedBox(
                width: 18.0,
              ),
              TextHoverNavigationTopUtil(
                text: _navigationTopController.navigation(4),
                onClick: () => scrollToItem(projectsKey),
                width: projectsWidth,
              ),
              const SizedBox(
                width: 18.0,
              ),
              TextHoverNavigationTopUtil(
                text: _navigationTopController.navigation(5),
                onClick: () => scrollToItem(contactKey),
                width: contactWidth,
              ),
              const SizedBox(
                width: 18.0,
              ),
              CustomButtonUtil(
                icon: MdiIcons.download,
                onClick: () => downloadCV(),
                text: _navigationTopController.navigation(6),
              ),
              const SizedBox(
                width: 10,
              ),
              _navigationTopController.currentLocale ==
                      _navigationTopController.id
                  ? CustomButtonLocaleUtil(
                      hint: texts.general.indonesia,
                      icon: CountryFlag.fromCountryCode("ID"),
                      click: () async {
                        _navigationTopController
                            .changeLocale(_navigationTopController.en);
                      },
                    )
                  : CustomButtonLocaleUtil(
                      hint: texts.general.english,
                      icon: CountryFlag.fromCountryCode("US"),
                      click: () async {
                        _navigationTopController
                            .changeLocale(_navigationTopController.id);
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Future scrollToItem(GlobalKey sectionKey) async {
    final context = sectionKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 2),
      curve: Curves.easeOutBack,
    );
  }
}
