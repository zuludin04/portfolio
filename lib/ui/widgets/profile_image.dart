import 'package:flutter/material.dart';

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
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 250,
        height: 250,
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
      ),
    );
  }

  void hoverImage(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
