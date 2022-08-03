import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/controller/theme_controller.dart';
import 'package:portfolio/ui/widgets/text_navigation.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class AppbarNavigation extends StatelessWidget {
  final ThemeController controller;
  final double sideSpacing;
  final Function(int index) goToSection;

  const AppbarNavigation({
    Key? key,
    required this.sideSpacing,
    required this.controller,
    required this.goToSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: appbarContainer(context, 60),
      mediumScreen: appbarContainer(context, 50),
      smallScreen: appbarContainer(context, 40),
    );
  }

  Widget appbarContainer(BuildContext context, double logoSize) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: sideSpacing,
        vertical: 20,
      ),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black12)),
      ),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              controller.isDark.value
                  ? 'assets/icon/logo_dark.png'
                  : 'assets/icon/logo.png',
              width: logoSize,
              height: logoSize,
            ),
            Row(
              children: [
                TextNavigation(
                  title: 'Home',
                  onTap: () => goToSection(0),
                  titleColor:
                      controller.isDark.value ? Colors.white : Colors.black,
                ),
                const SizedBox(width: 32),
                TextNavigation(
                  title: 'Experience',
                  onTap: () => goToSection(1),
                  titleColor:
                      controller.isDark.value ? Colors.white : Colors.black,
                ),
                const SizedBox(width: 32),
                TextNavigation(
                  title: 'Projects',
                  onTap: () => goToSection(2),
                  titleColor:
                      controller.isDark.value ? Colors.white : Colors.black,
                ),
                const SizedBox(width: 32),
                TextNavigation(
                  title: 'Contact',
                  onTap: () => goToSection(3),
                  titleColor:
                      controller.isDark.value ? Colors.white : Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
