import 'package:fajaralhijr_github_io/controllers/projects_controller.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/models/tab_button_model.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/custom_button.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/project_card.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/project_custom_tab_btn.dart';
import 'package:fajaralhijr_github_io/views/desktop/additional_screens/projects_desktop_screen.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/title_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  late List<TabButtonModel> tabs;
  bool isViewPersonal = true;
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;
    ProjectsController projectsController = ProjectsController();

    tabs = [
      TabButtonModel(
        title: texts.general.title_personal_projects_project_section,
        icon: Icons.folder,
        isSelected: isViewPersonal,
      ),
      TabButtonModel(
        title: texts.general.title_client_projects_project_section,
        icon: Icons.laptop_mac_rounded,
        isSelected: !isViewPersonal,
      ),
    ];

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _screenWidth * .1172,
        vertical: _screenHeight * .065,
      ),
      width: double.infinity,
      child: Column(
        children: [
          TitleSectionUtil(
            title: texts.general.title_project_section,
            isDesktop: true,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: _screenWidth * .45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: [
                BoxShadow(
                  color: kBlackColor.withOpacity(0.10),
                  blurRadius: 4.0,
                  offset: const Offset(0.0, 3.0),
                )
              ],
            ),
            child: Row(
              children: tabs
                  .map((tab) => ProjectCustomTabBtn(
                        tab: tab,
                        click: () {
                          setState(() {
                            int tabIndex = tabs.indexOf(tab);
                            if (tabIndex == 1) {
                              isViewPersonal = false;
                            } else {
                              isViewPersonal = true;
                            }
                          });
                        },
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          projectsController.projects
                  .where((element) => tabs.first.isSelected
                      ? element.isPersonal
                      : !element.isPersonal)
                  .toList()
                  .isEmpty
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemBuilder: (context, index) => ProjectCard(
                      project: projectsController.projects
                          .where((element) => tabs.first.isSelected
                              ? element.isPersonal
                              : !element.isPersonal)
                          .toList()[index]),
                  itemCount: projectsController.projects
                          .where((element) => tabs.first.isSelected
                              ? element.isPersonal
                              : !element.isPersonal)
                          .toList()
                          .isEmpty
                      ? 0
                      : projectsController.projects
                          .where((element) => tabs.first.isSelected
                              ? element.isPersonal
                              : !element.isPersonal)
                          .toList()
                          .length,
                  shrinkWrap: true,
                ),
          const SizedBox(
            height: 20,
          ),
          CustomButtonUtil(
            text: texts.general.browse_projects_home_section,
            icon: MdiIcons.folder,
            onClick: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProjectsDesktopScreen(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
