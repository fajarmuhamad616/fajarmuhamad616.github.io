import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String content;
  final IconData icon;

  const ContactCard({
    super.key,
    required this.content,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   FlutterClipboard.copy(content);
      //   BotToast.showText(
      //     duration: const Duration(seconds: 6),
      //     text: texts.general.copy,
      //     textStyle: kNormalTextStyleGrey,
      //   );
      // },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: const Color(0xffB3A595),
              size: 35,
            ),
            const SizedBox(width: 30),
            Flexible(
              child: Text(
                content,
                style: const TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
