import 'package:flutter/material.dart';

class ProjectScreenshot extends StatelessWidget {
  final String assets;

  const ProjectScreenshot({Key? key, required this.assets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
      ),
      child: Image.asset(assets),
    );
  }
}
