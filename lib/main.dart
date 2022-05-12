import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/dashboard_screen.dart';
import 'package:portfolio/ui/project_detail_screen.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Zulfikar Mauludin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => const DashboardScreen(),
        ),
        GetPage(
          name: '/detail_project',
          page: () => ProjectDetailScreen(),
        ),
      ],
      home: const DashboardScreen(),
    );
  }
}
