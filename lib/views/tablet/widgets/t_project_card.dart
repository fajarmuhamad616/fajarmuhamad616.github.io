import 'package:fajaralhijr_github_io/models/project_model.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/widgets/project_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TProjectCard extends StatefulWidget {
  final ProjectModel project;

  const TProjectCard({super.key, required this.project});

  @override
  _TProjectCardState createState() => _TProjectCardState();
}

class _TProjectCardState extends State<TProjectCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return _screenWidth >= 1020
        ? Column(
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
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  height: 300,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 450),
                          curve: Curves.easeInBack,
                          height: 300,
                          width: _isHovered ? 550 : 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            image: DecorationImage(
                              image: NetworkImage(widget.project.cover),
                              fit: BoxFit.cover,
                              colorFilter: _isHovered
                                  ? null
                                  : ColorFilter.mode(
                                      kPrimaryColor.withOpacity(0.2),
                                      BlendMode.srcOver,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 1200),
                          curve: Curves.bounceOut,
                          height: 280,
                          width: _isHovered ? 290 : 380,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.project.name,
                                  style: kTitleTextStyle.copyWith(fontSize: 30),
                                ),
                                Container(
                                    height: 160,
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(20.0),
                                    decoration: BoxDecoration(
                                      color: kLightDarkColor,
                                      borderRadius: BorderRadius.circular(6.0),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(3, 5),
                                          color: const Color(0xff000000)
                                              .withOpacity(.1),
                                          blurRadius: 2.0,
                                          spreadRadius: 2.0,
                                        ),
                                      ],
                                    ),
                                    child: SingleChildScrollView(
                                      child: Text(
                                        widget.project.description,
                                        style: kNormalTextStyleGrey,
                                      ),
                                    )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ProjectIconBtn(
                                        icon: MdiIcons.github,
                                        link: widget.project.githubLink),
                                    ProjectIconBtn(
                                        icon: MdiIcons.link,
                                        link: widget.project.externalLink),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: kPrimaryColor,
                thickness: 3,
                endIndent: 450,
                indent: 450,
              ),
            ],
          )
        : Container(
            height: 350,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: kPrimaryColor,
              image: DecorationImage(
                image: NetworkImage(widget.project.cover),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.srcOver,
                  color: Colors.black.withOpacity(.4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            widget.project.name,
                            style: kTitleTextStyle.copyWith(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.right,
                            softWrap: true,
                            overflow: TextOverflow.clip,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              widget.project.type,
                              style: kMiniTitleTextStyleWhite,
                              softWrap: true,
                              textAlign: TextAlign.right,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          widget.project.description,
                          style: kNormalTextStyleWhite,
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 8,
                        )),
                    Container(
                      color: kLightDarkColor,
                      width: double.infinity,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ProjectIconBtn(
                            icon: MdiIcons.github,
                            link: widget.project.githubLink,
                          ),
                          ProjectIconBtn(
                            icon: MdiIcons.link,
                            link: widget.project.externalLink,
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
