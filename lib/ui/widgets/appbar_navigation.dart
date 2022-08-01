import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/controller/theme_controller.dart';
import 'package:portfolio/ui/widgets/text_navigation.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class AppbarNavigation extends StatelessWidget {
  final ThemeController controller;
  final double sideSpacing;

  const AppbarNavigation({
    Key? key,
    required this.sideSpacing,
    required this.controller,
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
                  onTap: () {},
                  titleColor:
                      controller.isDark.value ? Colors.white : Colors.black,
                ),
                const SizedBox(width: 32),
                TextNavigation(
                  title: 'Experience',
                  onTap: () {},
                  titleColor:
                      controller.isDark.value ? Colors.white : Colors.black,
                ),
                const SizedBox(width: 32),
                TextNavigation(
                  title: 'Projects',
                  onTap: () {},
                  titleColor:
                      controller.isDark.value ? Colors.white : Colors.black,
                ),
                const SizedBox(width: 32),
                TextNavigation(
                  title: 'Contact',
                  onTap: () {},
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
