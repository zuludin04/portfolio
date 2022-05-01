import 'package:animated_background/animated_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/controller/theme_controller.dart';
import 'package:portfolio/ui/widgets/appbar_navigation.dart';
import 'package:portfolio/ui/widgets/profile_image.dart';
import 'package:portfolio/utils/contants.dart';
import 'package:portfolio/utils/responsive_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'widgets/experience_item.dart';
import 'widgets/project_item.dart';
import 'widgets/section_title.dart';
import 'widgets/sliding_button.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with TickerProviderStateMixin {
  final ThemeController controller = Get.put(ThemeController());

  ParticleOptions particleOptions = ParticleOptions(
    image: Image.asset('assets/particle.png'),
    baseColor: Colors.blue,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    spawnMinSpeed: 30.0,
    spawnMaxSpeed: 70.0,
    spawnMinRadius: 8.0,
    spawnMaxRadius: 20.0,
    particleCount: 60,
  );

  var particlePaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Obx(
      () => Scaffold(
        backgroundColor: controller.isDark.value ? Colors.black : Colors.white,
        body: AnimatedBackground(
          vsync: this,
          behaviour: RandomParticleBehaviour(
            options: particleOptions,
            paint: particlePaint,
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    AppbarNavigation(
                      sideSpacing: size.width * 0.05,
                      controller: controller,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.15),
                      child: Column(
                        children: [
                          const ProfileImage(),
                          const SizedBox(height: 36),
                          SelectableText.rich(
                            TextSpan(
                              text: 'Hi I\'m \n',
                              style: TextStyle(
                                fontSize: ResponsiveWidget.isLargeScreen(
                                        context)
                                    ? 45
                                    : ResponsiveWidget.isMediumScreen(context)
                                        ? 40
                                        : 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto Bold',
                                color: controller.isDark.value
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              children: const [
                                TextSpan(
                                  text: 'Zulfikar Mauludin \n',
                                  style: TextStyle(color: Color(0xff128B91)),
                                ),
                                TextSpan(text: 'I Love Learning \nNew Tech'),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 36),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ResponsiveWidget.isLargeScreen(
                                        context)
                                    ? size.width * 0.3
                                    : ResponsiveWidget.isMediumScreen(context)
                                        ? size.width * 0.2
                                        : size.width * 0.1),
                            child: SelectableText(
                              about,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Montserrat Regular',
                                fontSize: 16,
                                color: controller.isDark.value
                                    ? Colors.white
                                    : Colors.black87,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 72),
                          SlidingButton(
                            title: 'Contact Me',
                            onTap: () => showContactDialog(context, controller),
                            controller: controller,
                          ),
                          const SizedBox(height: 72),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: const Color(0xff04363D),
                  padding: EdgeInsets.symmetric(
                    vertical: 72,
                    horizontal: ResponsiveWidget.isLargeScreen(context)
                        ? size.width * 0.18
                        : ResponsiveWidget.isMediumScreen(context)
                            ? size.width * 0.15
                            : size.width * 0.12,
                  ),
                  child: Column(
                    children: [
                      const SectionTitle(
                        title: 'Experience',
                        color: Colors.white,
                      ),
                      const SizedBox(height: 36),
                      Column(
                        children: experiences
                            .map((e) => ExperienceItem(experience: e))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: controller.isDark.value ? Colors.black : Colors.white,
                  padding: EdgeInsets.only(
                    left: size.width * 0.1,
                    right: size.width * 0.1,
                    top: 72,
                  ),
                  child: Column(
                    children: [
                      SectionTitle(
                        title: 'Projects',
                        color: controller.isDark.value
                            ? Colors.white
                            : const Color(0xff04363D),
                      ),
                      const SizedBox(height: 36),
                    ],
                  ),
                ),
              ),
              SliverStack(
                children: [
                  SliverPositioned.fill(
                    child: Container(
                        color: controller.isDark.value
                            ? Colors.black
                            : Colors.white),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                    sliver: ResponsiveWidget.isSmallScreen(context) ||
                            ResponsiveWidget.isMediumScreen(context)
                        ? SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) => ProjectItem(
                                project: projects[index],
                                controller: controller,
                              ),
                              childCount: projects.length,
                            ),
                          )
                        : SliverGrid(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) => ProjectItem(
                                project: projects[index],
                                controller: controller,
                              ),
                              childCount: projects.length,
                            ),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 25,
                              crossAxisSpacing: 25,
                              childAspectRatio: 1.16,
                            ),
                          ),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: controller.isDark.value ? Colors.black : Colors.white,
                  padding: const EdgeInsets.all(72),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveWidget.isLargeScreen(context)
                        ? size.width * 0.3
                        : ResponsiveWidget.isMediumScreen(context)
                            ? size.width * 0.2
                            : size.width * 0.1,
                    vertical: size.height * 0.2,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 48),
                      SectionTitle(
                        title: 'Get In Touch',
                        color: controller.isDark.value
                            ? Colors.white
                            : const Color(0xff04363D),
                      ),
                      const SizedBox(height: 24),
                      SelectableText(
                        'Although I\'m not currently looking for any new opportunities,\nmy inbox is always open. Whether you have a question or just want to say hi,\nI\'ll try my best to get back to you!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Montserrat Regular',
                          fontSize: 16,
                          color: controller.isDark.value
                              ? Colors.white
                              : Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 48),
                      SlidingButton(
                        title: 'Say Hi!',
                        onTap: () => showContactDialog(context, controller),
                        controller: controller,
                      ),
                      const SizedBox(height: 48),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: const Color(0xff04363D),
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  child: const SelectableText.rich(
                    TextSpan(
                      text: 'Made by ',
                      style: TextStyle(
                        fontFamily: 'Montserrat Regular',
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                      children: [
                        TextSpan(
                          text: 'Zulfikar Mauludin',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
