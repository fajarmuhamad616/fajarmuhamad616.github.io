import 'package:fajaralhijr_github_io/controllers/experience_controller.dart';
import 'package:fajaralhijr_github_io/utils/external_app_util.dart';
import 'package:fajaralhijr_github_io/utils/fonts_util.dart';
import 'package:fajaralhijr_github_io/views/widgets_utils/title_section_util.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:time_machine/time_machine.dart';

class ProfessionalExperienceSection extends StatelessWidget {
  const ProfessionalExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;

    ExperienceController experienceController = ExperienceController();
    experienceController.workExperience
        .sort((a, b) => b.startDate.compareTo(a.startDate));

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _screenWidth * .1172,
        vertical: _screenHeight * .065,
      ),
      width: double.infinity,
      child: Column(
        children: [
          const TitleSectionUtil(
            title: "Professional Experience",
            isDesktop: true,
          ),
          experienceController.workExperience.isEmpty
              ? const CircularProgressIndicator()
              : ExpansionPanelList.radio(
                  children: experienceController.workExperience
                      .map(
                        (work) => ExpansionPanelRadio(
                          backgroundColor: Colors.black45,
                          canTapOnHeader: true,
                          value: work.id!,
                          headerBuilder: ((context, isExpanded) {
                            LocalDate a;
                            if (work.worksHere) {
                              a = LocalDate.today();
                            } else {
                              a = LocalDate.dateTime(
                                  DateTime.parse(work.endDate!));
                            }
                            LocalDate b = LocalDate.dateTime(
                                DateTime.parse(work.startDate));
                            Period diff = a.periodSince(b);
                            return MouseRegion(
                              onEnter: (_) => experienceController
                                  .triggerAnimation(work.id!, true),
                              onExit: (_) => experienceController
                                  .triggerAnimation(work.id!, false),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            work.position,
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        GestureDetector(
                                          onTap: () async {
                                            ExternalAppUtil.redirectToLink(
                                              url: 'https://${work.siteUrl}',
                                            );
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    '@',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      letterSpacing: 1,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        work.company,
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          letterSpacing: 1,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      AnimatedContainer(
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    750),
                                                        curve: Curves.bounceOut,
                                                        height: 2,
                                                        width: work.isHovered
                                                            ? 160.0
                                                            : 50,
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 10),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 8,
                                                            vertical: 4),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                    ),
                                                    child: Text(
                                                      work.empType,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.timer_rounded,
                                          size: 16,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          '${DateFormat.yMMM().format(DateTime.parse(work.startDate))} - ${work.worksHere ? 'Present' : DateFormat.yMMM().format(DateTime.parse(work.endDate!))}',
                                          style: kNormalTextStyleGrey.copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6.0),
                                          child: Icon(
                                            MdiIcons.circle,
                                            size: 8,
                                          ),
                                        ),
                                        Text(
                                          '${diff.years == 0 ? '${diff.months} ${diff.months >= 2 ? 'months' : 'month'} ${diff.days} days' : '${diff.years} ${diff.years >= 2 ? 'years' : 'year'} ${diff.months} months ${diff.days} days'}',
                                          style: kNormalTextStyleGrey.copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Icon(
                                          MdiIcons.mapMarker,
                                          size: 16,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          '${work.state}, ${work.country}.',
                                          style: kNormalTextStyleGrey.copyWith(
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                          body: Column(
                            children: work.workDone
                                .map(
                                  (i) => Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 7),
                                        Expanded(
                                          child: Text(
                                            i,
                                            style:
                                                kNormalTextStyleGrey.copyWith(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      )
                      .toList(),
                ),
        ],
      ),
    );
  }
}
