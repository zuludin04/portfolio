import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconFaClickable extends StatelessWidget {
  final IconData icon;
  final Function() onTap;

  const IconFaClickable({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: FaIcon(
          icon,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
