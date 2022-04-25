class Project {
  String name;
  String description;
  String image;
  String company;
  List<Tech> techs;

  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.company,
    required this.techs,
  });
}

class Tech {
  String icon;
  String name;

  Tech({required this.icon, required this.name});
}
