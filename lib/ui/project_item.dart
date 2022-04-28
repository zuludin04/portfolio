// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/data/project.dart';

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
        onTap: () {
          if (widget.project.link.type == 1) {
            html.window.open(widget.project.link.url, 'new tab');
          } else {
            debugPrint('open detail app');
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(1, 1),
                blurRadius: 0,
                spreadRadius: 0,
                color: isHovered ? Colors.green.shade300 : Colors.grey.shade100,
              ),
            ],
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
                  child: Image.asset(
                    widget.project.image,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.project.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat Regular',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  widget.project.description,
                  style: const TextStyle(
                    fontFamily: 'Montserrat Regular',
                  ),
                ),
              ),
              const Divider(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: widget.project.techs
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
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat Regular',
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void hoverProject(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
