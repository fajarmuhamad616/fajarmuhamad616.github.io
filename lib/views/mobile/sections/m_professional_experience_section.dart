import 'package:fajaralhijr_github_io/controllers/experience_controller.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/utils/external_app_util.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/views/mobile/widgets/m_professional_experience_title_text.dart';
import 'package:fajaralhijr_github_io/widgets/title_section.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:time_machine/time_machine.dart';

class MProfessionalExperienceSection extends StatelessWidget {
  const MProfessionalExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    ExperienceController experienceController = ExperienceController();
    experienceController.workExperience
        .sort((a, b) => b.startDate.compareTo(a.startDate));

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: double.infinity,
      child: Column(
        children: [
          TitleSection(
            title: texts.general.title_experience_section,
            isDesktop: false,
          ),
          experienceController.workExperience.isEmpty
              ? const CircularProgressIndicator()
              : ExpansionPanelList.radio(
                  materialGapSize: 0.0,
                  children: experienceController.workExperience
                      .map(
                        (work) => ExpansionPanelRadio(
                          backgroundColor: kDarkColor,
                          canTapOnHeader: true,
                          value: work.id!,
                          headerBuilder: ((context, isExpanded) {
                            LocalDate dateWork;
                            if (work.worksHere) {
                              dateWork = LocalDate.today();
                            } else {
                              dateWork = LocalDate.dateTime(DateTime.parse(
                                  work.endDate ?? '1970-01-01T00:00:00Z'));
                            }
                            LocalDate startWorkByDate = LocalDate.dateTime(
                                DateTime.parse(work.startDate));
                            Period countPeriodByDate =
                                dateWork.periodSince(startWorkByDate);
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    work.position,
                                    style: kNormalTextStyleWhite.copyWith(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      ExternalAppUtil.redirectToLink(
                                        url: 'https://${work.siteUrl}',
                                      );
                                    },
                                    child: MProfessionalExperienceTitleText(
                                      isMobile: true,
                                      experienceModel: work,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.timer_rounded,
                                        size: 16,
                                      ),
                                      const SizedBox(width: 8),
                                      Flexible(
                                        child: Text(
                                          overflow: TextOverflow.visible,
                                          softWrap: true,
                                          '${DateFormat.yMMM().format(DateTime.parse(work.startDate))} - ${work.worksHere ? 'Present' : DateFormat.yMMM().format(DateTime.parse(work.endDate ?? '1970-01-01T00:00:00Z'))}',
                                          style: kNormalTextStyleGrey.copyWith(
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: Icon(
                                          MdiIcons.circle,
                                          size: 8,
                                        ),
                                      ),
                                      Flexible(
                                        child: Text(
                                          overflow: TextOverflow.visible,
                                          softWrap: true,
                                          countPeriodByDate.years == 0
                                              ? '${countPeriodByDate.months} ${countPeriodByDate.months >= 2 ? 'months' : 'month'} ${countPeriodByDate.days} days'
                                              : '${countPeriodByDate.years} ${countPeriodByDate.years >= 2 ? 'years' : 'year'} ${countPeriodByDate.months} months ${countPeriodByDate.days} days',
                                          style: kNormalTextStyleGrey.copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Icon(
                                        MdiIcons.mapMarker,
                                        size: 15,
                                      ),
                                      const SizedBox(width: 4),
                                      Flexible(
                                        child: Text(
                                          overflow: TextOverflow.visible,
                                          softWrap: true,
                                          '${work.state}, ${work.country}.',
                                          style: kNormalTextStyleGrey.copyWith(
                                            fontSize: 11,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                          body: Column(
                            children: work.workDone
                                .map(
                                  (description) => Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(width: 7),
                                        Expanded(
                                          child: Text(
                                            description,
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
