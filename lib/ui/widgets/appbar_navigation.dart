import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/text_navigation.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class AppbarNavigation extends StatefulWidget {
  final double sideSpacing;
  final Function(int index) goToSection;

  const AppbarNavigation({
    Key? key,
    required this.sideSpacing,
    required this.goToSection,
  }) : super(key: key);

  @override
  State<AppbarNavigation> createState() => _AppbarNavigationState();
}

class _AppbarNavigationState extends State<AppbarNavigation> {
  int selectedIndex = 0;

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
        horizontal: widget.sideSpacing,
        vertical: 20,
      ),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/icon/logo_dark.png',
            width: logoSize,
            height: logoSize,
          ),
          Row(
            children: [
              TextNavigation(
                title: 'Home',
                onTap: (index) {
                  widget.goToSection(0);
                  setState(() {
                    selectedIndex = index;
                  });
                },
                titleColor: Colors.white,
                index: 0,
                selected: selectedIndex == 0,
              ),
              const SizedBox(width: 32),
              TextNavigation(
                title: 'Experience',
                onTap: (index) {
                  widget.goToSection(1);
                  setState(() {
                    selectedIndex = index;
                  });
                },
                titleColor: Colors.white,
                index: 1,
                selected: selectedIndex == 1,
              ),
              const SizedBox(width: 32),
              TextNavigation(
                title: 'Projects',
                onTap: (index) {
                  widget.goToSection(2);
                  setState(() {
                    selectedIndex = index;
                  });
                },
                titleColor: Colors.white,
                index: 2,
                selected: selectedIndex == 2,
              ),
              const SizedBox(width: 32),
              TextNavigation(
                title: 'Contact',
                onTap: (index) {
                  widget.goToSection(3);
                  setState(() {
                    selectedIndex = index;
                  });
                },
                titleColor: Colors.white,
                index: 3,
                selected: selectedIndex == 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
