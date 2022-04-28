// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/data/project.dart';

class ProjectItem extends StatelessWidget {
  final Project project;

  const ProjectItem({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (project.link.type == 1) {
            html.window.open(project.link.url, 'new tab');
          } else {
            debugPrint('open detail app');
          }
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(1, 1),
                blurRadius: 1,
                spreadRadius: 1,
                color: Colors.grey.shade300,
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
                child: Image.asset(
                  project.image,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  project.name,
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
                  project.description,
                  style: const TextStyle(
                    fontFamily: 'Montserrat Regular',
                  ),
                ),
              ),
              const Divider(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: project.techs
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
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Card(
              //       elevation: 5,
              //       child: Image.asset(
              //         project.image,
              //         height: 217,
              //       ),
              //     ),
              //     const SizedBox(width: 16),
              //     Expanded(
              //       child: SizedBox(
              //         height: 217,
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           mainAxisSize: MainAxisSize.max,
              //           children: [
              //             Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   project.name,
              //                   style: const TextStyle(
              //                     fontSize: 18,
              //                     fontWeight: FontWeight.bold,
              //                     fontFamily: 'Montserrat Regular',
              //                   ),
              //                 ),
              //                 const SizedBox(height: 4),
              //                 Text(
              //                   project.description,
              //                   style: const TextStyle(
              //                     fontFamily: 'Montserrat Regular',
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             Row(
              //               children: project.techs
              //                   .map(
              //                     (e) => Padding(
              //                       padding: const EdgeInsets.only(right: 16),
              //                       child: Row(
              //                         crossAxisAlignment: CrossAxisAlignment.center,
              //                         mainAxisAlignment: MainAxisAlignment.center,
              //                         children: [
              //                           SvgPicture.asset(
              //                             e.icon,
              //                             width: 18,
              //                           ),
              //                           const SizedBox(width: 8),
              //                           Text(
              //                             e.name,
              //                             style: const TextStyle(
              //                               fontSize: 16,
              //                               fontWeight: FontWeight.w600,
              //                               fontFamily: 'Montserrat Regular',
              //                             ),
              //                           ),
              //                         ],
              //                       ),
              //                     ),
              //                   )
              //                   .toList(),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // const Divider(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
