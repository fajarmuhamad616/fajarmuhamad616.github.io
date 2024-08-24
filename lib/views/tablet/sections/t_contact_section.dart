import 'package:bot_toast/bot_toast.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/services/message_service.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/strings.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/contact_card.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/custom_button.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/icon_home_hover.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/input_field.dart';
import 'package:fajaralhijr_github_io/widgets/title_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TContactSection extends StatefulWidget {
  const TContactSection({super.key});

  @override
  State<TContactSection> createState() => _TContactSectionState();
}

class _TContactSectionState extends State<TContactSection> {
  bool _isSending = false;

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    final _form = GlobalKey<FormState>();
    String? name;
    String? email;
    String? message;

    void _send() async {
      final bool _isValid = _form.currentState!.validate();
      if (_isValid) {
        _form.currentState!.save();
        setState(() {
          _isSending = true;
        });
        await MessageService.sendMessage(
            sender: name!, email: email!, message: message!);
        setState(() {
          _isSending = false;
        });
        BotToast.showText(
          text:
              '${texts.general.thank_you} ${name!.trim()} , ${texts.general.get_back}',
          duration: const Duration(seconds: 6),
          textStyle: kNormalTextStyleGrey,
        );
        _form.currentState!.reset();
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90.0),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              children: [
                TitleSection(
                    title: texts.general.title_contact_section,
                    isDesktop: false),
                _screenWidth >= 1170
                    ? Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.symmetric(vertical: 40.0),
                              height: 500.0,
                              decoration: BoxDecoration(
                                color: kDarkColor,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(3, 5),
                                    color: kBlackColor.withOpacity(.12),
                                    blurRadius: 3.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 40.0),
                                    child: Text(
                                      texts.general.title_contact_me_section,
                                      style: kTitleTextStyle.copyWith(
                                          fontSize: 20.0),
                                    ),
                                  ),
                                  const Column(
                                    children: [
                                      ContactCard(
                                        content: location,
                                        icon: Icons.location_pin,
                                      ),
                                      ContactCard(
                                        content: gmail,
                                        icon: Icons.email,
                                      ),
                                      ContactCard(
                                        content: phoneWork,
                                        icon: Icons.phone,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 60.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconHomeHoverUtil(
                                        icon: MdiIcons.linkedin,
                                        color: kDarkBlueColor,
                                        isMobile: true,
                                      ),
                                      IconHomeHoverUtil(
                                        icon: MdiIcons.github,
                                        color: kBlackColor,
                                        isMobile: true,
                                      ),
                                      IconHomeHoverUtil(
                                        icon: MdiIcons.instagram,
                                        color: kPinkColor,
                                        isMobile: true,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          // Expanded(
                          //   child: Form(
                          //     key: _form,
                          //     child: SizedBox(
                          //       height: 500.0,
                          //       child: Column(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           Text(
                          //             texts
                          //                 .general.get_in_touch_contact_section,
                          //             style: kTitleTextStyle.copyWith(
                          //                 fontSize: 30.0),
                          //           ),
                          //           Text(
                          //             texts.general.feel_free_contact_section,
                          //             style: kNormalTextStyleGrey,
                          //           ),
                          //           InputFieldUtil(
                          //             hint: texts.general
                          //                 .hint_your_name_contact_section,
                          //             maxLines: 1,
                          //             onSaved: (value) {
                          //               name = value!;
                          //             },
                          //           ),
                          //           InputFieldUtil(
                          //             hint: texts.general
                          //                 .hint_your_email_contact_section,
                          //             maxLines: 1,
                          //             onSaved: (value) {
                          //               name = value!;
                          //             },
                          //           ),
                          //           InputFieldUtil(
                          //             hint: texts
                          //                 .general.hint_message_contact_section,
                          //             maxLines: 5,
                          //             onSaved: (value) {
                          //               name = value!;
                          //             },
                          //           ),
                          //           CustomButtonUtil(
                          //             text: texts
                          //                 .general.btn_send_contact_section,
                          //             icon: Icons.send,
                          //             onClick: _isSending ? () {} : _send,
                          //             isLoading: _isSending,
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Quote of the day:',
                                    style: kQuoteTextStyle.copyWith(
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    'Every task you complete today is a step closer to your goals. Embrace the challenges, for they shape the success of tomorrow.',
                                    style: kQuoteTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 500.0,
                            decoration: BoxDecoration(
                              color: kDarkColor,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(3, 5),
                                  color: kBlackColor.withOpacity(.12),
                                  blurRadius: 3.0,
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40.0),
                                  child: Text(
                                    texts.general.title_contact_me_section,
                                    style: kTitleTextStyle.copyWith(
                                        fontSize: 20.0),
                                  ),
                                ),
                                const Column(
                                  children: [
                                    ContactCard(
                                      icon: Icons.location_pin,
                                      content: location,
                                    ),
                                    ContactCard(
                                      icon: Icons.email,
                                      content: gmail,
                                    ),
                                    ContactCard(
                                      icon: Icons.phone,
                                      content: phoneWork,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 60.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconHomeHoverUtil(
                                      icon: MdiIcons.linkedin,
                                      color: kDarkBlueColor,
                                      isMobile: true,
                                    ),
                                    IconHomeHoverUtil(
                                      icon: MdiIcons.github,
                                      color: kBlackColor,
                                      isMobile: true,
                                    ),
                                    IconHomeHoverUtil(
                                      icon: MdiIcons.instagram,
                                      color: kPinkColor,
                                      isMobile: true,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   height: 500.0,
                          //   child: Form(
                          //     key: _form,
                          //     child: Column(
                          //       mainAxisAlignment:
                          //           MainAxisAlignment.spaceBetween,
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         Text(
                          //           texts.general.get_in_touch_contact_section,
                          //           style: kTitleTextStyle.copyWith(
                          //               fontSize: 30.0),
                          //         ),
                          //         Text(
                          //           texts.general.feel_free_contact_section,
                          //           style: kNormalTextStyleGrey,
                          //         ),
                          //         InputFieldUtil(
                          //           hint: texts
                          //               .general.hint_your_name_contact_section,
                          //           maxLines: 1,
                          //           onSaved: (value) {
                          //             name = value;
                          //           },
                          //         ),
                          //         InputFieldUtil(
                          //           hint: texts.general
                          //               .hint_your_email_contact_section,
                          //           maxLines: 1,
                          //           onSaved: (value) {
                          //             name = value;
                          //           },
                          //         ),
                          //         InputFieldUtil(
                          //           hint: texts
                          //               .general.hint_message_contact_section,
                          //           maxLines: 5,
                          //           onSaved: (value) {
                          //             name = value;
                          //           },
                          //         ),
                          //         CustomButtonUtil(
                          //           text:
                          //               texts.general.btn_send_contact_section,
                          //           icon: Icons.send,
                          //           onClick: _isSending ? () {} : _send,
                          //           isLoading: _isSending,
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          // )
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Quote of the day:',
                                    style: kQuoteTextStyle.copyWith(
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    'Every task you complete today is a step closer to your goals. Embrace the challenges, for they shape the success of tomorrow.',
                                    style: kQuoteTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
