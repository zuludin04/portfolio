// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/email_service.dart';
import 'package:portfolio/ui/controller/navigation_controller.dart';
import 'package:portfolio/ui/widgets/appbar_navigation.dart';
import 'package:portfolio/ui/widgets/contact_field.dart';
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
  final NavigationController controller = Get.put(NavigationController());
  final formKey = GlobalKey<FormState>();

  ParticleOptions particleOptions = ParticleOptions(
    image: Image.asset('assets/other/particle.png'),
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

  var email = '';
  var message = '';

  bool inputFailed = false;
  bool sendingEmail = false;

  final List<GlobalKey> sectionKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff111111),
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              title: Image.asset(
                'assets/icon/logo_dark.png',
                width: 40,
                height: 40,
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          : null,
      endDrawer: Drawer(
        child: Container(
          color: Colors.blueGrey.shade900,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/icon/logo_dark.png',
                  width: 60,
                  height: 60,
                ),
                const SizedBox(height: 32),
                _drawerNavItem('Home', 0),
                _drawerNavItem('Experience', 1),
                _drawerNavItem('Projects', 2),
                _drawerNavItem('Contact', 3),
              ],
            ),
          ),
        ),
      ),
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(
          options: particleOptions,
          paint: particlePaint,
        ),
        child: Column(
          children: [
            if (!ResponsiveWidget.isSmallScreen(context))
              AppbarNavigation(
                sideSpacing: size.width * 0.05,
                goToSection: (index) {
                  Scrollable.ensureVisible(
                    sectionKeys[index].currentContext!,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    key: sectionKeys[0],
                    child: Padding(
                      padding: EdgeInsets.only(top: size.height * 0.2),
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
                                color: Colors.white,
                              ),
                              children: const [
                                TextSpan(
                                  text: 'Zulfikar Mauludin \n',
                                  style: TextStyle(color: Color(0xff128B91)),
                                ),
                                TextSpan(text: 'I am a Mobile Developer'),
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
                              style: const TextStyle(
                                fontFamily: 'Montserrat Regular',
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.2),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    key: sectionKeys[1],
                    child: Container(
                      color: const Color(0xff333333),
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
                    key: sectionKeys[2],
                    child: Container(
                      color: const Color(0xff111111),
                      padding: EdgeInsets.only(
                        left: size.width * 0.1,
                        right: size.width * 0.1,
                        top: 72,
                      ),
                      child: Column(
                        children: const [
                          SectionTitle(
                            title: 'Projects',
                            color: Colors.white,
                          ),
                          SizedBox(height: 36),
                        ],
                      ),
                    ),
                  ),
                  SliverStack(
                    children: [
                      SliverPositioned.fill(
                        child: Container(color: const Color(0xff111111)),
                      ),
                      SliverPadding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.1),
                        sliver: ResponsiveWidget.isSmallScreen(context) ||
                                ResponsiveWidget.isMediumScreen(context)
                            ? SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (context, index) =>
                                      ProjectItem(project: projects[index]),
                                  childCount: projects.length,
                                ),
                              )
                            : SliverGrid(
                                delegate: SliverChildBuilderDelegate(
                                  (context, index) =>
                                      ProjectItem(project: projects[index]),
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
                      color: const Color(0xff111111),
                      padding: const EdgeInsets.all(72),
                      child: Center(
                        child: SlidingButton(
                          title: 'More',
                          onTap: () {
                            html.window.open(
                              'https://github.com/zuludin04',
                              'new tab',
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    key: sectionKeys[3],
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: ResponsiveWidget.isLargeScreen(context)
                            ? size.width * 0.3
                            : ResponsiveWidget.isMediumScreen(context)
                                ? size.width * 0.2
                                : size.width * 0.1,
                        vertical: size.height * 0.2,
                      ),
                      child: Form(
                        key: formKey,
                        autovalidateMode: inputFailed
                            ? AutovalidateMode.onUserInteraction
                            : AutovalidateMode.disabled,
                        child: Column(
                          children: [
                            const SizedBox(height: 48),
                            const SectionTitle(
                              title: 'Get In Touch',
                              color: Colors.white,
                            ),
                            const SizedBox(height: 24),
                            ContactField(
                              label: 'Email',
                              expand: false,
                              initialValue: email,
                              onChanged: (text) => email = text,
                              validator: emailValidator,
                            ),
                            ContactField(
                              label: 'Message',
                              expand: true,
                              initialValue: message,
                              onChanged: (text) => message = text,
                              validator: messageValidator,
                            ),
                            const SizedBox(height: 48),
                            SlidingButton(
                              title: 'Say Hi!',
                              sendingEmail: sendingEmail,
                              onTap: () async {
                                if (formKey.currentState!.validate()) {
                                  setState(() {
                                    sendingEmail = true;
                                  });
                                  await EmailService.sendContactMessage(
                                          email, message)
                                      .then((value) {
                                    setState(() {
                                      sendingEmail = false;
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          "Pesan berhasil dikirim",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        backgroundColor: Colors.lightGreen,
                                        behavior: SnackBarBehavior.floating,
                                        elevation: 0,
                                      ),
                                    );
                                  });
                                  setState(() {
                                    email = '';
                                    message = '';
                                  });
                                } else {
                                  setState(() {
                                    inputFailed = true;
                                  });
                                }
                              },
                            ),
                            const SizedBox(height: 48),
                          ],
                        ),
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
          ],
        ),
      ),
    );
  }

  Widget _drawerNavItem(String title, int index) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16,
              fontFamily: 'Montserrat Regular',
              letterSpacing: 2,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
            Scrollable.ensureVisible(
              sectionKeys[index].currentContext!,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        const Divider(color: Colors.white),
      ],
    );
  }
}
