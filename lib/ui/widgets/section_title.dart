import 'package:flutter/material.dart';

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
    return SelectableText(
      title,
      style: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto Bold',
        color: color,
        letterSpacing: 2,
      ),
    );
  }
}
