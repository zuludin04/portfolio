import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlidingButton extends StatefulWidget {
  final String title;
  final Function() onTap;
  final double width;

  const SlidingButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.width = 125,
  }) : super(key: key);

  @override
  State<SlidingButton> createState() => _SlidingButtonState();
}

class _SlidingButtonState extends State<SlidingButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => hoveringWidget(true),
      onExit: (_) => hoveringWidget(false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 50,
              width: isHovered ? widget.width : 0,
              color: Colors.black,
            ),
            Container(
              width: widget.width,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(),
              ),
              child: AnimatedDefaultTextStyle(
                child: Text(widget.title),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isHovered ? Colors.white : Colors.black,
                ),
                duration: const Duration(milliseconds: 250),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void hoveringWidget(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
