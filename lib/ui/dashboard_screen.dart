import 'package:animated_background/animated_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/ui/experience_item.dart';
import 'package:portfolio/ui/project_item.dart';
import 'package:portfolio/utils/contants.dart';
import 'package:portfolio/utils/section_title.dart';
import 'package:portfolio/utils/sliding_button.dart';
import 'package:portfolio/utils/text_navigation.dart';
import 'package:sliver_tools/sliver_tools.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with TickerProviderStateMixin {
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

    return Scaffold(
      backgroundColor: Colors.white,
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
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: 20,
                    ),
                    decoration: const BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Colors.black12),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          width: 60,
                          height: 60,
                        ),
                        TextNavigation(
                          title: 'Contact',
                          onTap: showContactDialog,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.15),
                    child: Column(
                      children: [
                        Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              image: AssetImage('assets/profile.jpg'),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: Colors.cyan.shade400,
                              width: 2,
                            ),
                          ),
                        ),
                        const SizedBox(height: 36),
                        const SelectableText.rich(
                          TextSpan(
                            text: 'Hi I\'m \n',
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto Bold',
                              color: Colors.black,
                            ),
                            children: [
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
                              horizontal: size.width * 0.3),
                          child: SelectableText(
                            about,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Montserrat Regular',
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 72),
                        SlidingButton(
                          title: 'Contact Me',
                          onTap: showContactDialog,
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
                color: const Color(0xffFFD47D),
                padding: EdgeInsets.symmetric(
                  vertical: 72,
                  horizontal: size.width * 0.18,
                ),
                child: Column(
                  children: [
                    const SectionTitle(title: 'Experience'),
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
                color: Colors.white,
                padding: EdgeInsets.only(
                  left: size.width * 0.1,
                  right: size.width * 0.1,
                  top: 72,
                ),
                child: Column(
                  children: const [
                    SectionTitle(title: 'Projects'),
                    SizedBox(height: 36),
                  ],
                ),
              ),
            ),
            SliverStack(
              children: [
                SliverPositioned.fill(
                  child: Container(color: Colors.white),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => ProjectItem(project: projects[index]),
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
                color: Colors.white,
                padding: const EdgeInsets.all(72),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: size.height * 0.2,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 48),
                    const SectionTitle(title: 'Get In Touch'),
                    const SizedBox(height: 24),
                    const SelectableText(
                      'Although I\'m not currently looking for any new opportunities,\nmy inbox is always open. Whether you have a question or just want to say hi,\nI\'ll try my best to get back to you!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat Regular',
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 48),
                    SlidingButton(
                      title: 'Say Hi!',
                      onTap: showContactDialog,
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
    );
  }

  void showContactDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.white.withOpacity(0.9),
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close, size: 42),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Let\'s Chat.',
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 2,
                    fontFamily: 'Montserrat Regular',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 36),
                SlidingButton(
                  title: 'zmauludin04@gmail.com',
                  onTap: () {},
                  width: 620,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
