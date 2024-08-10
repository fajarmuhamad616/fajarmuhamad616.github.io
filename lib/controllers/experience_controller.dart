import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/models/experience_model.dart';

class ExperienceController {
  List<ExperienceModel> _workExperience = [];
  List<ExperienceModel> get workExperience => _workExperience;
  List<dynamic> get experiencesData => texts.experience.experiences;

  ExperienceController() {
    fetchAndSetExperiences();
  }

  void fetchAndSetExperiences() async {
    try {
      List<ExperienceModel> _loadedExperiences = [];
      int i = 0;
      for (var item in experiencesData) {
        ExperienceModel experience = ExperienceModel(
          id: texts.experience.experiences[i].company +
              texts.experience.experiences[i].position,
          company: texts.experience.experiences[i].company,
          position: texts.experience.experiences[i].position,
          country: texts.experience.experiences[i].country,
          empType: texts.experience.experiences[i].emp_type,
          state: texts.experience.experiences[i].state,
          startDate: texts.experience.experiences[i].start_date,
          workDone: texts.experience.experiences[i].works,
          worksHere: texts.experience.experiences[i].is_work_here == "true"
              ? true
              : false,
          endDate: texts.experience.experiences[i].end_date,
          siteUrl: texts.experience.experiences[i].site_url,
        );
        i++;
        _loadedExperiences.add(experience);
      }

      _workExperience = _loadedExperiences;
    } catch (e) {
      print("error: $e");
      rethrow;
    }
  }

  void triggerAnimation(String id, bool hover) {
    ExperienceModel experience =
        _workExperience.firstWhere((element) => element.id == id);
    experience.isHovered = hover;
  }
}
