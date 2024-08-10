import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:flutter/foundation.dart';
import 'package:fajaralhijr_github_io/models/skill_model.dart';

class SkillController {
  List<dynamic> get skillData => texts.skills.skills;

  List<SkillModel> _skills = [];
  List<SkillModel> get skills => [..._skills];

  SkillController() {
    fetchSkills();
  }

  void fetchSkills() {
    try {
      List<SkillModel> _loadedSkills = [];
      int i = 0;
      for (var item in skillData) {
        SkillModel skill = SkillModel(
          name: texts.skills.skills[i].name,
          iconUrl: texts.skills.skills[i].img,
        );
        i++;
        _loadedSkills.add(skill);
      }
      _skills = _loadedSkills;
    } catch (e) {
      if (kDebugMode) {
        print("fetchSkills error: $e");
      }
      rethrow;
    }
  }
}
