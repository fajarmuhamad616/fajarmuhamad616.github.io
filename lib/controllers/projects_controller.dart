import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/models/project_model.dart';
import 'package:flutter/foundation.dart';

class ProjectsController {
  List<dynamic> get projectsData => texts.projects.projects;

  images(int i) => texts.projects.projects[i].images;

  tech(int i) => texts.projects.projects[i].tech;
  List<ProjectModel> _projects = [];
  List<ProjectModel> get projects => _projects;

  ProjectsController() {
    fetchAndSetProjects();
  }

  void fetchAndSetProjects() {
    try {
      List<ProjectModel> _loadedProjects = [];
      int i = 0;
      for (var item in projectsData) {
        List<String> _loadedImage = [];
        for (var item in images(i)) {
          _loadedImage.add(item);
        }

        List<String> _loadedTech = [];
        for (var item in tech(i)) {
          _loadedTech.add(item);
        }

        ProjectModel project = ProjectModel(
          name: texts.projects.projects[i].name,
          cover: texts.projects.projects[i].cover_img,
          description: texts.projects.projects[i].description,
          externalLink: texts.projects.projects[i].external_link,
          githubLink: texts.projects.projects[i].github_link,
          images: _loadedImage,
          isPersonal:
              texts.projects.projects[i].is_personal == "true" ? true : false,
          playstoreLink: texts.projects.projects[i].playstore_link,
          tech: _loadedTech,
          type: texts.projects.projects[i].type,
        );
        i++;
        _loadedProjects.add(project);
      }
      _projects = _loadedProjects;
    } catch (e) {
      if (kDebugMode) {
        print("fetchAndSetProjects error: $e");
      }
      rethrow;
    }
  }
}
