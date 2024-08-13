import 'package:fajaralhijr_github_io/controllers/projects_controller.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/models/tab_button_model.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/widgets/title_section.dart';
import 'package:fajaralhijr_github_io/views/mobile/widgets/m_project_custom_tab_btn.dart';
import 'package:fajaralhijr_github_io/views/mobile/widgets/m_project_single_card.dart';
import 'package:flutter/material.dart';

class MProjectsSection extends StatefulWidget {
  const MProjectsSection({super.key});

  @override
  State<MProjectsSection> createState() => _MProjectsSectionState();
}

class _MProjectsSectionState extends State<MProjectsSection> {
  late List<TabButtonModel> tabs;
  bool isViewPersonal = true;
  @override
  Widget build(BuildContext context) {
    ProjectsController projectsController = ProjectsController();

    tabs = [
      TabButtonModel(
        title: texts.general.m_title_personal_projects_project_section,
        icon: Icons.folder,
        isSelected: isViewPersonal,
      ),
      TabButtonModel(
        title: texts.general.m_title_client_projects_project_section,
        icon: Icons.laptop_mac_rounded,
        isSelected: !isViewPersonal,
      ),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 50,
      ),
      width: double.infinity,
      child: Column(
        children: [
          TitleSection(
            title: texts.general.title_project_section,
            isDesktop: false,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
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
                  .map(
                    (tab) => MProjectCustomTabBtn(
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
                    ),
                  )
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
                  itemBuilder: (context, index) => MProjectSingleCard(
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
                  physics: const NeverScrollableScrollPhysics(),
                ),
        ],
      ),
    );
  }
}
