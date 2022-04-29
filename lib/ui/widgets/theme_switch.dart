import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  bool isHovered = false;
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onHover(true),
      onExit: (_) => onHover(false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isDark = !isDark;
          });
        },
        child: Stack(
          children: <Widget>[
            Transform.translate(
              offset: const Offset(2, 2),
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                      width: 0,
                    ),
                  ),
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: isHovered ? 0.6 : 0,
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Color(0xffffc107),
                        BlendMode.srcATop,
                      ),
                      child: themeIcon(),
                    ),
                  ),
                ),
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: themeIcon(),
              transitionBuilder: (child, animation) => ScaleTransition(
                scale: animation,
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget themeIcon() {
    return Image.asset(
      isDark ? 'assets/dark-mode.png' : 'assets/light-mode.png',
      key: Key(isDark ? 'dark' : 'light'),
      width: 40,
      height: 40,
      color: const Color(0xffffc107),
    );
  }

  void onHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
