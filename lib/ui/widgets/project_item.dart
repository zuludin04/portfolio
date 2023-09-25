import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/project.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class ProjectItem extends StatefulWidget {
  final Project project;

  const ProjectItem({Key? key, required this.project}) : super(key: key);

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => hoverProject(true),
      onExit: (_) => hoverProject(false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Get.toNamed("detail_project", arguments: widget.project),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xff111111),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.cyan, width: 0.2),
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AnimatedScale(
                    duration: const Duration(milliseconds: 250),
                    scale: isHovered ? 1.2 : 1,
                    child: projectImage(),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.project.name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat Regular',
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                widget.project.description,
                                style: const TextStyle(
                                  fontFamily: 'Montserrat Regular',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: techStacks(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget projectImage() {
    if (ResponsiveWidget.isSmallScreen(context) ||
        ResponsiveWidget.isMediumScreen(context)) {
      return Image.asset(
        widget.project.image,
        width: 200,
        fit: BoxFit.fill,
      );
    } else {
      return Image.asset(
        widget.project.image,
        fit: BoxFit.fill,
        width: 400,
      );
    }
  }

  List<Widget> techStacks() {
    return widget.project.techs
        .map(
          (e) => Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  e.icon,
                  width: 18,
                ),
                const SizedBox(width: 8),
                Text(
                  e.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat Regular',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        )
        .toList();
  }

  void hoverProject(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
