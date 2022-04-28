import 'package:flutter/material.dart';
import 'package:portfolio/data/experience.dart';

class ExperienceItem extends StatelessWidget {
  final Experience experience;

  const ExperienceItem({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    experience.company,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat Regular',
                      color: Colors.white,
                    ),
                  ),
                  SelectableText(
                    experience.duration,
                    style: const TextStyle(
                      fontFamily: 'Montserrat Regular',
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    experience.position,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Robotto Bold',
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: experience.tasks
                        .map((e) => _experienceTask(e))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(height: 36, color: Colors.white30),
      ],
    );
  }

  Widget _experienceTask(String task) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.play_arrow,
          size: 18,
          color: Colors.white,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SelectableText(
              task,
              style: const TextStyle(
                fontFamily: 'Montserrat Regular',
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
