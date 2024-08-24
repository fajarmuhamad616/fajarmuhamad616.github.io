import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:country_flags/country_flags.dart';
import 'package:fajaralhijr_github_io/controllers/navigation_top_controller.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/services/message_service.dart';
import 'package:fajaralhijr_github_io/utils/external_app_util.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/strings.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/custom_button.dart';
import 'package:fajaralhijr_github_io/views/tablet/sections/t_about_section.dart';
import 'package:fajaralhijr_github_io/views/tablet/sections/t_contact_section.dart';
import 'package:fajaralhijr_github_io/views/tablet/sections/t_footer_section.dart';
import 'package:fajaralhijr_github_io/views/tablet/sections/t_home_section.dart';
import 'package:fajaralhijr_github_io/views/tablet/sections/t_professional_experience_section.dart';
import 'package:fajaralhijr_github_io/views/tablet/sections/t_project_section.dart';
import 'package:fajaralhijr_github_io/views/tablet/sections/t_skill_section.dart';
import 'package:fajaralhijr_github_io/views/tablet/widgets/t_popup_menu_item.dart';
import 'package:fajaralhijr_github_io/widgets/custom_button_locale.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TabletBody extends StatefulWidget {
  const TabletBody({super.key});

  @override
  State<TabletBody> createState() => _TabletBodyState();
}

class _TabletBodyState extends State<TabletBody> {
  final tabContactKey = GlobalKey();
  final tabHomeKey = GlobalKey();
  final tabAboutKey = GlobalKey();
  final tabSkillKey = GlobalKey();
  final tabProjectKey = GlobalKey();
  final tabExperienceKey = GlobalKey();
  double tabHomeWidth = 0.0;
  double tabExperienceWidth = 0.0;
  double tabAboutWidth = 0.0;
  double tabSkillWidth = 0.0;
  double tabProjectWidth = 0.0;
  double tabContactWidth = 0.0;

  final ScrollController _scrollController = ScrollController();
  final NavigationTopController _navigationTopController =
      NavigationTopController();

  late String selectedValue;
  bool isPopupMenuOpen = false;

  Future scrollToItem(var sectionKey, bool pop) async {
    final context = sectionKey.currentContext!;
    if (pop) {
      Navigator.pop(context);
    }
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 2),
      curve: Curves.easeOutBack,
    );
  }

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
        clipBehavior: Clip.none,
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                THomeSection(
                  key: tabHomeKey,
                  scrollToProject: () {
                    scrollToItem(tabProjectKey, false);
                  },
                ),
                TAboutSection(key: tabAboutKey),
                TSkillSection(key: tabSkillKey),
                TProfessionalExperienceSection(
                    key: tabExperienceKey, isTabMode: true),
                TProjectSection(key: tabProjectKey),
                TContactSection(key: tabContactKey),
                const TFooterSection(),
              ],
            ),
          ),
          _topNavigationBar(_screenWidth)
        ],
      ),
    );
  }

  Positioned _topNavigationBar(double _screenWidth) {
    return Positioned(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        margin: EdgeInsets.symmetric(horizontal: _screenWidth * .03),
        child: BlurryContainer(
          blur: 1.5,
          width: double.infinity,
          height: 70,
          elevation: 6,
          color: kLightColor.withOpacity(0.2),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          borderRadius: const BorderRadius.all(Radius.circular(45)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    scrollToItem(tabHomeKey, false);
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
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PopupMenuButton<void>(
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        PopupMenuItem(
                          child: TPopupMenuItem(
                            icon: Icons.home,
                            onTap: () => scrollToItem(tabHomeKey, true),
                            text: _navigationTopController.navigation(0),
                          ),
                        ),
                        PopupMenuItem(
                          value: _navigationTopController.navigation(1),
                          child: TPopupMenuItem(
                            icon: Icons.account_box,
                            onTap: () => scrollToItem(tabAboutKey, true),
                            text: _navigationTopController.navigation(1),
                          ),
                        ),
                        PopupMenuItem(
                          value: _navigationTopController.navigation(2),
                          child: TPopupMenuItem(
                            icon: Icons.account_tree_sharp,
                            onTap: () => scrollToItem(tabSkillKey, true),
                            text: _navigationTopController.navigation(2),
                          ),
                        ),
                        PopupMenuItem(
                          value: _navigationTopController.navigation(3),
                          child: TPopupMenuItem(
                            icon: Icons.card_travel,
                            onTap: () => scrollToItem(tabExperienceKey, true),
                            text: _navigationTopController.navigation(3),
                          ),
                        ),
                        PopupMenuItem(
                          value: _navigationTopController.navigation(4),
                          child: TPopupMenuItem(
                            icon: Icons.cloud,
                            onTap: () => scrollToItem(tabProjectKey, true),
                            text: _navigationTopController.navigation(4),
                          ),
                        ),
                        PopupMenuItem(
                          value: _navigationTopController.navigation(5),
                          child: TPopupMenuItem(
                            icon: Icons.phone,
                            onTap: () => scrollToItem(tabContactKey, true),
                            text: _navigationTopController.navigation(5),
                          ),
                        ),
                      ],
                      offset: const Offset(0, 50),
                      child: const Icon(Icons.menu),
                    ),
                    const SizedBox(
                      width: 5.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
