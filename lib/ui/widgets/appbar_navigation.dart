import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/controller/navigation_controller.dart';
import 'package:portfolio/ui/widgets/text_navigation.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class AppbarNavigation extends StatelessWidget {
  // final NavigationController controller;
  final double sideSpacing;
  final Function(int index) goToSection;

  const AppbarNavigation({
    Key? key,
    required this.sideSpacing,
    // required this.controller,
    required this.goToSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: appbarContainer(60),
      mediumScreen: appbarContainer(50),
      smallScreen: appbarContainer(40),
    );
  }

  Widget appbarContainer(double logoSize) {
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
              'assets/icon/logo.png',
              width: logoSize,
              height: logoSize,
            ),
            // Row(
            //   children: [
            //     TextNavigation(
            //       title: 'Home',
            //       onTap: () => goToSection(0),
            //       index: 0,
            //       titleColor: Colors.black,
            //     ),
            //     const SizedBox(width: 32),
            //     TextNavigation(
            //       title: 'Experience',
            //       onTap: () => goToSection(1),
            //       index: 1,
            //       titleColor: Colors.black,
            //     ),
            //     const SizedBox(width: 32),
            //     TextNavigation(
            //       title: 'Projects',
            //       onTap: () => goToSection(2),
            //       index: 2,
            //       titleColor: Colors.black,
            //     ),
            //     const SizedBox(width: 32),
            //     TextNavigation(
            //       title: 'Contact',
            //       onTap: () => goToSection(3),
            //       index: 3,
            //       titleColor: Colors.black,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
