import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/project.dart';
import 'package:portfolio/ui/controller/theme_controller.dart';
import 'package:portfolio/ui/project_detail_screen.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class ProjectItem extends StatefulWidget {
  final Project project;
  final ThemeController controller;

  const ProjectItem({
    Key? key,
    required this.project,
    required this.controller,
  }) : super(key: key);

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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ProjectDetailScreen(project: widget.project),
            ),
          );
        },
        child: Obx(
          () => AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            margin: EdgeInsets.symmetric(
                vertical: ResponsiveWidget.isMediumScreen(context) ||
                        ResponsiveWidget.isSmallScreen(context)
                    ? 16
                    : 0),
            decoration: BoxDecoration(
              color: widget.controller.isDark.value
                  ? const Color(0xff111111)
                  : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.cyan, width: 0.2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: AnimatedScale(
                    duration: const Duration(milliseconds: 250),
                    scale: isHovered ? 1.2 : 1,
                    child: projectImage(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.project.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat Regular',
                      color: widget.controller.isDark.value
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    widget.project.description,
                    style: TextStyle(
                      fontFamily: 'Montserrat Regular',
                      color: widget.controller.isDark.value
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
                Divider(
                  height: 32,
                  color: widget.controller.isDark.value
                      ? Colors.white12
                      : Colors.black12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: ResponsiveWidget.isMediumScreen(context) ||
                            ResponsiveWidget.isSmallScreen(context)
                        ? 16
                        : 0,
                  ),
                  child: ResponsiveWidget.isMediumScreen(context) ||
                          ResponsiveWidget.isSmallScreen(context)
                      ? Row(
                          children: [
                            Expanded(child: Wrap(children: techStacks())),
                          ],
                        )
                      : Row(children: techStacks()),
                ),
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
        width: double.infinity,
        height: 250,
        fit: BoxFit.fitWidth,
      );
    } else {
      return Image.asset(
        widget.project.image,
        width: double.infinity,
        fit: BoxFit.fitWidth,
      );
    }
  }

  List<Widget> techStacks() {
    return widget.project.techs
        .map(
          (e) => Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  e.icon,
                  width: 18,
                ),
                const SizedBox(width: 8),
                Text(
                  e.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat Regular',
                    color: widget.controller.isDark.value
                        ? Colors.white
                        : Colors.black,
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
