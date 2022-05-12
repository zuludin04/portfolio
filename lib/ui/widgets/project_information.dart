// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectInformation extends StatelessWidget {
  final String title;
  final String info;
  final String url;
  final Color color;

  const ProjectInformation({
    Key? key,
    required this.title,
    required this.info,
    required this.url,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat Regular',
            color: color,
          ),
        ),
        const SizedBox(height: 4),
        infoWidget(context),
      ],
    );
  }

  Widget infoWidget(BuildContext context) {
    if (info == 'Released') {
      return InkWell(
        onTap: () {
          html.window.open(url, 'new tab');
        },
        child: Image.asset('assets/icon/google_play.png', width: 200),
      );
    } else {
      return Text(
        info,
        style: TextStyle(
          color: color,
          fontSize: 14,
          fontFamily: 'Montserrat Regular',
        ),
      );
    }
  }
}
