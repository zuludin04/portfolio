import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => hoverImage(true),
      onExit: (_) => hoverImage(false),
      child: ResponsiveWidget(
        largeScreen: imageProfile(250),
        mediumScreen: imageProfile(220),
        smallScreen: imageProfile(190),
      ),
    );
  }

  Widget imageProfile(double imageSize) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: const DecorationImage(
          image: AssetImage('assets/profile.jpg'),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: Colors.cyan.shade400,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withAlpha(125),
            blurRadius: 10,
            spreadRadius: isHovered ? 5 : 0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
    );
  }

  void hoverImage(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
