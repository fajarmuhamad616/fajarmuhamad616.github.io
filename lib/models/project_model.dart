class ProjectModel {
  String name;
  String type;
  String description;
  String cover;
  String githubLink;
  String externalLink;
  String playstoreLink;
  List<String> images;
  List<String> tech;
  bool isPersonal;

  ProjectModel({
    required this.name,
    required this.type,
    required this.description,
    required this.cover,
    required this.githubLink,
    required this.externalLink,
    required this.playstoreLink,
    required this.images,
    required this.tech,
    required this.isPersonal,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      name: json['name'],
      type: json['type'],
      description: json['description'],
      cover: json['cover_img'],
      githubLink: json['github_link'],
      externalLink: json['external_link'],
      playstoreLink: json['playstore_link'],
      images: List<String>.from(json['images']),
      tech: List<String>.from(json['tech']),
      isPersonal: json['is_personal'],
    );
  }
}
