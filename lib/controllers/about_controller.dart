import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/models/about_card_model.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AboutController {
  String get aboutMe => texts.about.about_me;

  List<IconData> get icons => [
        MdiIcons.brain,
        MdiIcons.languageJava,
        MdiIcons.api,
        MdiIcons.android,
        MdiIcons.shieldBug,
      ];
  List<Color> get colors => [
        Colors.green,
        Colors.redAccent,
        Colors.greenAccent,
        Colors.green,
        Colors.blueAccent,
      ];

  AboutCardModel aboutCardModel(int i) {
    return AboutCardModel(
      content: texts.about.about_cards[i].content,
      icon: icons[i],
      title: texts.about.about_cards[i].title,
      color: colors[i],
    );
  }
}
