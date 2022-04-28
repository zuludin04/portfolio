class Project {
  String name;
  String description;
  String image;
  String company;
  Link link;
  List<Tech> techs;

  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.company,
    required this.link,
    required this.techs,
  });
}

class Tech {
  String icon;
  String name;

  Tech({required this.icon, required this.name});
}

class Link {
  int type;
  String url;

  Link({required this.type, required this.url});
}
