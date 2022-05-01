import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final Color color;

  const SectionTitle({
    Key? key,
    required this.title,
    this.color = const Color(0xff04363D),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: titleSection(45),
      mediumScreen: titleSection(40),
      smallScreen: titleSection(35),
    );
  }

  Widget titleSection(double fontSize) {
    return SelectableText(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto Bold',
        color: color,
        letterSpacing: 2,
      ),
    );
  }
}
