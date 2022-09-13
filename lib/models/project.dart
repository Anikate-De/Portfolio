class Project {
  String name;
  List<String> description;
  List<String> skillsLearned;
  String? url;
  String asset;

  Project({
    required this.name,
    required this.description,
    required this.skillsLearned,
    this.url,
    required this.asset,
  });
}
