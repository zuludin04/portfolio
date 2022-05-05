import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectInformation extends StatelessWidget {
  final String title;
  final String info;

  const ProjectInformation({
    Key? key,
    required this.title,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat Regular',
          ),
        ),
        const SizedBox(height: 4),
        Text(
          info,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'Montserrat Regular',
          ),
        ),
      ],
    );
  }
}
