import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/project.dart';
import 'package:portfolio/ui/widgets/project_information.dart';
import 'package:portfolio/ui/widgets/project_screenshot.dart';
import 'package:portfolio/ui/widgets/section_title.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class ProjectDetailScreen extends StatelessWidget {
  final Project project = Get.arguments;

  ProjectDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff111111),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xff111111),
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
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
                    color: Colors.white,
                  ),
                  SelectableText(
                    project.description,
                    style: const TextStyle(
                      fontFamily: 'Montserrat Regular',
                      fontSize: 18,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ProjectInformation(
                    title: 'Platform',
                    info: 'Android',
                    url: project.link,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 32),
                  ProjectInformation(
                    title: 'Technology',
                    info: project.techs[1].name,
                    url: project.link,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 32),
                  ProjectInformation(
                    title: 'Company',
                    info: project.company,
                    url: project.link,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 32),
                  ProjectInformation(
                    title: 'Download',
                    info: project.status,
                    url: project.link,
                    color: Colors.white,
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
                  const SectionTitle(
                    title: 'Screenshot',
                    color: Colors.white,
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
    );
  }
}
