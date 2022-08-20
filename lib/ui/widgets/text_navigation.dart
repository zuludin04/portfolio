import 'package:flutter/material.dart';

class TextNavigation extends StatefulWidget {
  final String title;
  final Function(int index) onTap;
  final Color titleColor;
  final bool selected;
  final int index;

  const TextNavigation({
    Key? key,
    required this.title,
    required this.onTap,
    required this.titleColor,
    required this.selected,
    required this.index,
  }) : super(key: key);

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
      child: GestureDetector(
        onTap: () => widget.onTap(widget.index),
        child: Column(
          children: [
            Text(
              widget.title,
              style: TextStyle(
                color: widget.titleColor,
                fontWeight: FontWeight.w700,
                fontSize: 16,
                fontFamily: 'Montserrat Regular',
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 5),
            _selectedIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _selectedIndicator() {
    if (widget.selected) {
      return Container(
        height: 3,
        width: 50,
        decoration: BoxDecoration(
          color: const Color(0xffE5AB29),
          borderRadius: BorderRadius.circular(3),
        ),
      );
    } else {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        height: 3,
        width: isHovered ? 50 : 0,
        decoration: BoxDecoration(
          color: isHovered ? const Color(0xffE5AB29) : Colors.transparent,
          borderRadius: BorderRadius.circular(3),
        ),
      );
    }
  }

  void onHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
