// import 'package:bot_toast/bot_toast.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
// import 'package:fajaralhijr_github_io/services/message_service.dart';
import 'package:fajaralhijr_github_io/values/strings.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/contact_card.dart';
// import 'package:fajaralhijr_github_io/views/widgets_utils/custom_button_util.dart';
import 'package:fajaralhijr_github_io/views/desktop/widgets/icon_home_hover.dart';
// import 'package:fajaralhijr_github_io/views/widgets_utils/input_field_util.dart';
import 'package:fajaralhijr_github_io/widgets/title_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  // bool _isSending = false;

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;
    // final _form = GlobalKey<FormState>();
    // String? name;
    // String? email;
    // String? message;

    // void send() async {
    //   final _isValid = _form.currentState!.validate();
    //   if (_isValid) {
    //     _form.currentState!.save();
    //     setState(() {
    //       _isSending = true;
    //     });
    //     bool result = await MessageService.sendMessage(
    //         sender: name!, email: email!, message: message!);
    //     setState(() {
    //       _isSending = false;
    //     });
    //     if (result) {
    //       BotToast.showText(
    //         duration: const Duration(seconds: 6),
    //         text:
    //             'Thank You for contacting me ${name!.trim()} , I will get back to you shortly',
    //         textStyle: kNormalTextStyleGrey,
    //       );
    //     }
    //     _form.currentState?.reset();
    //   }
    // }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _screenWidth * .1172,
        vertical: _screenHeight * .065,
      ),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                TitleSection(
                  title: texts.general.title_contact_section,
                  isDesktop: true,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        height: 500,
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
                              padding: const EdgeInsets.symmetric(vertical: 40),
                              child: Text(
                                texts.general.title_contact_me_section,
                                style: kTitleTextStyle.copyWith(fontSize: 30),
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
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 60,
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
                                  isMobile: true,
                                  icon: MdiIcons.github,
                                  color: kBlackColor,
                                ),
                                IconHomeHoverUtil(
                                  isMobile: true,
                                  icon: MdiIcons.instagram,
                                  color: kPinkColor,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    Expanded(
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
                    // Expanded(
                    //   child: SizedBox(
                    //     height: 500,
                    //     child: Form(
                    //       key: _form,
                    //       child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             "Get in touch",
                    //             style: kTitleTextStyle.copyWith(fontSize: 30),
                    //           ),
                    //           Text(
                    //             "Feel free to get in touch",
                    //             style: kNormalTextStyleGrey,
                    //           ),
                    //           InputFieldUtil(
                    //             hint: "Your name",
                    //             maxLines: 1,
                    //             onSaved: (value) {
                    //               name = value!;
                    //             },
                    //           ),
                    //           InputFieldUtil(
                    //             hint: "Your email",
                    //             maxLines: 1,
                    //             onSaved: (value) {
                    //               email = value!;
                    //             },
                    //           ),
                    //           InputFieldUtil(
                    //             hint: "Type your message",
                    //             maxLines: 5,
                    //             onSaved: (value) {
                    //               message = value!;
                    //             },
                    //           ),
                    //           CustomButtonUtil(
                    //             icon: Icons.send,
                    //             onClick: _isSending ? () {} : send,
                    //             text: "Send",
                    //             isLoading: _isSending,
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
