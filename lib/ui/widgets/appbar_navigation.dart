import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/controller/theme_controller.dart';
import 'package:portfolio/ui/widgets/text_navigation.dart';
import 'package:portfolio/ui/widgets/theme_switch.dart';
import 'package:portfolio/utils/contants.dart';

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
    return Obx(
      () => Container(
        padding: EdgeInsets.symmetric(
          horizontal: sideSpacing,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: controller.isDark.value ? Colors.black : Colors.transparent,
          border: const Border(bottom: BorderSide(color: Colors.black12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 60,
              height: 60,
            ),
            Row(
              children: [
                TextNavigation(
                  title: 'Contact',
                  onTap: () => showContactDialog(context),
                ),
                const SizedBox(width: 36),
                ThemeSwitch(controller: controller),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
