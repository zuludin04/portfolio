class Project {
  String name;
  String description;
  String image;
  String company;
  String status;
  String link;
  List<Tech> techs;
  List<String> screenshots;

  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.company,
    required this.status,
    required this.link,
    required this.techs,
    required this.screenshots,
  });
}

class Tech {
  String icon;
  String name;

  Tech({required this.icon, required this.name});
}
