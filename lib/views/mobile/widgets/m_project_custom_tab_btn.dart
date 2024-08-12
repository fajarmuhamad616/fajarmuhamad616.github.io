import 'package:fajaralhijr_github_io/models/tab_button_model.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:flutter/material.dart';

class MProjectCustomTabBtn extends StatelessWidget {
  final TabButtonModel tab;
  final VoidCallback click;

  const MProjectCustomTabBtn(
      {super.key, required this.tab, required this.click});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: click,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            padding: const EdgeInsets.all(6),
            margin: EdgeInsets.only(
              right: tab.title.contains('Personal') ? 5 : 0,
              left: tab.title.contains('Work') ? 0 : 5,
            ),
            decoration: tab.isSelected
                ? BoxDecoration(
                    color: kPrimaryColor.withOpacity(.1),
                    border: Border.all(
                      color: kPrimaryColor,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0))
                : null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                tab.isSelected
                    ? Icon(
                        tab.icon,
                        color: kPrimaryColor,
                      )
                    : Icon(
                        tab.icon,
                        color: kGreyColor,
                      ),
                const SizedBox(width: 10),
                FittedBox(
                  child: Text(
                    tab.title,
                    style: kNormalTextStyleGrey.copyWith(
                      fontSize: 14,
                      color: tab.isSelected ? kLightColor : kGreyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
