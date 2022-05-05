import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/project_information.dart';
import 'package:portfolio/ui/widgets/section_title.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: size.height * 0.7,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/pintar-kerja.png',
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
                children: const [
                  SectionTitle(title: 'About'),
                  SelectableText(
                      'Aplikasi online learning berbasis Flutter yang bisa dipakai oleh siapa saja'),
                  SizedBox(height: 24),
                  ProjectInformation(title: 'Platform', info: 'Android'),
                  SizedBox(height: 32),
                  ProjectInformation(title: 'Technology', info: 'Flutter'),
                  SizedBox(height: 32),
                  ProjectInformation(title: 'Company', info: 'Wakaftech'),
                  SizedBox(height: 32),
                  ProjectInformation(title: 'Status', info: 'Not Released'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
