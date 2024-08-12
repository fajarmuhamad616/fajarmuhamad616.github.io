import 'package:fajaralhijr_github_io/models/project_model.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/widgets/custom_chip.dart';
import 'package:fajaralhijr_github_io/widgets/project_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel project;

  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;
    if (_screenHeight < 700) _screenHeight = 700;
    return Column(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) {
            setState(() {
              _isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHovered = false;
            });
          },
          child: GestureDetector(
            onTap: () {
              // showModalBottomSheet(
              //   context: context,
              //   builder: (context) =>
              //       ProjectImagesCard(clickedProject: widget.project),
              //   isScrollControlled: true,
              // );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              height: _screenHeight * 0.578,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    right: 50,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 450),
                      curve: Curves.easeInBack,
                      //height: _screenHeight * .578,
                      width: _isHovered
                          ? _screenWidth * .549
                          : _screenWidth * .512,
                      decoration: BoxDecoration(
                        color: Colors.green.shade900,
                        border: Border.all(
                          color: Colors.green,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          widget.project.cover,
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.srcOver,
                          color: _isHovered
                              ? null
                              : Colors.green.shade900.withOpacity(.3),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 1200),
                      curve: Curves.bounceOut,
                      height: _screenHeight * .506,
                      width: _isHovered
                          ? _screenWidth * .341
                          : _screenWidth * .607,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.project.name,
                                textAlign: TextAlign.left,
                                style: kTitleTextStyle.copyWith(
                                    fontSize: _screenWidth * .0204),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  widget.project.type,
                                  style: kMiniTitleTextStyleGreen,
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Wrap(
                              runSpacing:
                                  8.0, // Adjust the vertical spacing value as per your preference
                              children: widget.project.tech
                                  .map((tech) => CustomChip(name: tech))
                                  .toList(),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: _screenHeight * .231,
                              width: double.infinity,
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                // color: klightDarkColor,
                                borderRadius: BorderRadius.circular(6.0),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(3, 5),
                                    color:
                                        const Color(0xff000000).withOpacity(.1),
                                    blurRadius: 2.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Text(
                                widget.project.description,
                                style: kNormalTextStyleGrey,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ProjectIconBtn(
                                icon: MdiIcons.github,
                                link: widget.project.githubLink,
                              ),
                              ProjectIconBtn(
                                icon: MdiIcons.link,
                                link: widget.project.externalLink,
                              ),
                              ProjectIconBtn(
                                icon: MdiIcons.googlePlay,
                                link: widget.project.playstoreLink,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // const Divider(
        //   color: kprimaryColor,
        //   thickness: 3,
        //   endIndent: 450,
        //   indent: 450,
        // ),
      ],
    );
  }
}
