import 'package:flutter/material.dart';

class TextNavigation extends StatefulWidget {
  final String title;

  const TextNavigation({Key? key, required this.title}) : super(key: key);

  @override
  State<TextNavigation> createState() => _TextNavigationState();
}

class _TextNavigationState extends State<TextNavigation>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation borderColor;

  bool isHovered = false;

  @override
  void initState() {
    animationController = AnimationController(vsync: this);
    borderColor =
        ColorTween(begin: Colors.transparent, end: const Color(0xffE5AB29))
            .animate(animationController);
    super.initState();
  }

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
            width: 50,
            curve: Curves.easeInOut,
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
