import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/controller/theme_controller.dart';

class SlidingButton extends StatefulWidget {
  final String title;
  final Function() onTap;
  final double width;
  final ThemeController controller;
  final bool sendingEmail;

  const SlidingButton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.controller,
    this.width = 125,
    this.sendingEmail = false,
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
        child: Obx(
          () => Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                height: 50,
                width: isHovered ? widget.width : 0,
                color: widget.controller.isDark.value
                    ? Colors.white
                    : Colors.black,
              ),
              Container(
                width: widget.width,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: widget.controller.isDark.value
                          ? Colors.white
                          : Colors.black),
                ),
                child: widget.sendingEmail
                    ? const CircularProgressIndicator(color: Color(0xff04363D))
                    : AnimatedDefaultTextStyle(
                        child: Text(widget.title),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: textColor(),
                        ),
                        duration: const Duration(milliseconds: 250),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color textColor() {
    if (isHovered) {
      return widget.controller.isDark.value ? Colors.black : Colors.white;
    } else {
      return widget.controller.isDark.value ? Colors.white : Colors.black;
    }
  }

  void hoveringWidget(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
