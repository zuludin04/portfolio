import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/project.dart';
import 'package:portfolio/ui/controller/theme_controller.dart';
import 'package:portfolio/ui/widgets/project_information.dart';
import 'package:portfolio/ui/widgets/project_screenshot.dart';
import 'package:portfolio/ui/widgets/section_title.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class ProjectDetailScreen extends StatelessWidget {
  final ThemeController controller = Get.find();
  final Project project;

  ProjectDetailScreen({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Obx(
      () => Scaffold(
        backgroundColor:
            controller.isDark.value ? const Color(0xff111111) : Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: controller.isDark.value
                  ? const Color(0xff111111)
                  : Colors.white,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back,
                  color: controller.isDark.value ? Colors.white : Colors.black,
                ),
              ),
              expandedHeight: size.height * 0.7,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  project.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                vertical: 72,
                horizontal: ResponsiveWidget.isLargeScreen(context)
                    ? size.width * 0.18
                    : ResponsiveWidget.isMediumScreen(context)
                        ? size.width * 0.15
                        : size.width * 0.12,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(
                      title: project.name,
                      color: controller.isDark.value
                          ? Colors.white
                          : const Color(0xff04363D),
                    ),
                    SelectableText(
                      project.description,
                      style: TextStyle(
                        fontFamily: 'Montserrat Regular',
                        fontSize: 18,
                        letterSpacing: 1,
                        color: controller.isDark.value
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ProjectInformation(
                      title: 'Platform',
                      info: 'Android',
                      url: project.link,
                      color:
                          controller.isDark.value ? Colors.white : Colors.black,
                    ),
                    const SizedBox(height: 32),
                    ProjectInformation(
                      title: 'Technology',
                      info: project.techs[1].name,
                      url: project.link,
                      color:
                          controller.isDark.value ? Colors.white : Colors.black,
                    ),
                    const SizedBox(height: 32),
                    ProjectInformation(
                      title: 'Company',
                      info: project.company,
                      url: project.link,
                      color:
                          controller.isDark.value ? Colors.white : Colors.black,
                    ),
                    const SizedBox(height: 32),
                    ProjectInformation(
                      title: 'Status',
                      info: project.status,
                      url: project.link,
                      color:
                          controller.isDark.value ? Colors.white : Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveWidget.isLargeScreen(context)
                    ? size.width * 0.18
                    : ResponsiveWidget.isMediumScreen(context)
                        ? size.width * 0.15
                        : size.width * 0.12,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(
                      title: 'Screenshot',
                      color: controller.isDark.value
                          ? Colors.white
                          : const Color(0xff04363D),
                    ),
                    Wrap(
                      children: project.screenshots
                          .map((e) => ProjectScreenshot(assets: e))
                          .toList(),
                    ),
                    const SizedBox(height: 72),
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
}
