import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      title,
      style: const TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto Bold',
        color: Color(0xff04363D),
        letterSpacing: 2,
      ),
    );
  }
}
