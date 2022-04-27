import 'package:flutter/material.dart';

class TextNavigation extends StatefulWidget {
  final String title;

  const TextNavigation({Key? key, required this.title}) : super(key: key);

  @override
  State<TextNavigation> createState() => _TextNavigationState();
}

class _TextNavigationState extends State<TextNavigation>
    with TickerProviderStateMixin {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onHover(true),
      onExit: (_) => onHover(false),
      cursor: SystemMouseCursors.click,
      child: Column(
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 16,
              fontFamily: 'Montserrat Regular',
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 5),
          AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            height: 3,
            width: isHovered ? 50 : 0,
            decoration: BoxDecoration(
              color: isHovered ? const Color(0xffE5AB29) : Colors.transparent,
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ],
      ),
    );
  }

  void onHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
