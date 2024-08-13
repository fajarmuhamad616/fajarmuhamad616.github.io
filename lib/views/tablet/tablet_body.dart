import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabletBody extends StatefulWidget {
  const TabletBody({super.key});

  @override
  State<TabletBody> createState() => _TabletBodyState();
}

class _TabletBodyState extends State<TabletBody> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.black,
      Colors.black38,
      Colors.black26,
      Colors.black12,
    ];

    TextStyle colorizeTextStyle = GoogleFonts.habibi(
      fontSize: 50.0,
    );

    return Scaffold(
      backgroundColor: kLightColor,
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Size Tablet',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
              ColorizeAnimatedText(
                'Still',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
              ColorizeAnimatedText(
                'Under Maintenance',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
          ),
        ),
      ),
    );
  }
}
