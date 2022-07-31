import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/experience.dart';
import 'package:portfolio/data/project.dart';
import 'package:portfolio/ui/controller/theme_controller.dart';
import 'package:portfolio/ui/widgets/sliding_button.dart';

var about =
    "I'm a software develepor and focused especially on mobile development.\nProficient using both Native (Java/Kotlin) and Flutter as my framework to build an application.";

var experiences = [
  Experience(
    company: 'Badan Waqaf Alquran',
    duration: 'Jul 2020 - Present',
    position: 'Mobile Engineer',
    tasks: [
      'Build mobile application architecture from scratch using Flutter',
      'Create Islamic theme application for every Muslim in the world',
      'Implement community feature so user can read Al-Quran in unison',
      'Working with a UI designer to create an application that everyone can easily access',
    ],
  ),
  Experience(
    company: 'Waqaftech',
    duration: 'Oct 2021 - Juni 2022',
    position: 'Mobile Engineer',
    tasks: [
      'Build mobile application architecture from scratch using Flutter',
      'Create an online learning application complete with features such as video streaming, progress tracking, payments, and courses',
      'Developed LMS mobile application for student and teacher',
    ],
  ),
  Experience(
    company: 'PT. Amanah Karya Indonesia',
    duration: 'Jan 2020 - Jun 2020',
    position: 'Mobile Engineer',
    tasks: [
      'Responsible for implementing Replenishment feature in TMIIN company application',
      'Release and maintenance of Islamic mobile application called BisaBerbagi',
      'Convert berbagi.link site into mobile application',
      'Fixing the existing code to be more robust, maintainable, and testable',
    ],
  ),
];

var projects = [
  Project(
    name: 'Mumtaaz',
    description:
        'Muslim application for BWA\'s Wakif (user), so they can easily donating',
    image: 'assets/project/Mumtaaz.png',
    company: 'BWA',
    status: 'Released',
    link: 'https://play.google.com/store/apps/details?id=id.bwa.bwa_wakif_app',
    techs: [
      Tech(icon: 'assets/icon/android.svg', name: 'Android'),
      Tech(icon: 'assets/icon/dart.svg', name: 'Dart'),
      Tech(icon: 'assets/icon/flutter.svg', name: 'Flutter'),
    ],
    screenshots: [
      'assets/screenshot/mumtaaz/mumtaaz_sc_1.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_2.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_3.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_4.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_5.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_6.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_7.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_8.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_9.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_10.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_11.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_12.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_13.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_14.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_15.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_16.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_17.webp',
      'assets/screenshot/mumtaaz/mumtaaz_sc_18.webp',
    ],
  ),
  Project(
    name: 'Pintar Kerja',
    description:
        'Online learning application created by Flutter, that easy to use for everybody',
    image: 'assets/project/pintar-kerja.png',
    company: 'Waqaftech',
    link: '',
    status: 'Not Released',
    techs: [
      Tech(icon: 'assets/icon/android.svg', name: 'Android'),
      Tech(icon: 'assets/icon/dart.svg', name: 'Dart'),
      Tech(icon: 'assets/icon/flutter.svg', name: 'Flutter'),
    ],
    screenshots: [],
  ),
  Project(
    name: 'During',
    description: 'Save your daily expense with this user friendly application',
    image: 'assets/project/during.png',
    company: 'Personal',
    status: 'Released',
    link:
        'https://play.google.com/store/apps/details?id=com.app.zuludin.during.during',
    techs: [
      Tech(icon: 'assets/icon/android.svg', name: 'Android'),
      Tech(icon: 'assets/icon/dart.svg', name: 'Dart'),
      Tech(icon: 'assets/icon/flutter.svg', name: 'Flutter'),
    ],
    screenshots: [
      'assets/screenshot/during/during_sc_1.webp',
      'assets/screenshot/during/during_sc_2.webp',
      'assets/screenshot/during/during_sc_3.webp',
      'assets/screenshot/during/during_sc_4.webp',
      'assets/screenshot/during/during_sc_5.webp',
      'assets/screenshot/during/during_sc_6.webp',
    ],
  ),
  Project(
    name: 'Bisa Berbagi',
    description:
        'An application from Amanah Corporation for every muslim in the world',
    image: 'assets/project/bisaberbagi.jpg',
    company: 'PT. Amanah Karya Indonesia',
    status: 'Released',
    link:
        'https://play.google.com/store/apps/details?id=com.amanah.bisaberbagi',
    techs: [
      Tech(icon: 'assets/icon/android.svg', name: 'Android'),
      Tech(icon: 'assets/icon/java.svg', name: 'Java'),
    ],
    screenshots: [
      'assets/screenshot/bisaberbagi/bisaberbagi_sc_1.webp',
      'assets/screenshot/bisaberbagi/bisaberbagi_sc_2.webp',
      'assets/screenshot/bisaberbagi/bisaberbagi_sc_3.webp',
      'assets/screenshot/bisaberbagi/bisaberbagi_sc_4.webp',
      'assets/screenshot/bisaberbagi/bisaberbagi_sc_5.webp',
      'assets/screenshot/bisaberbagi/bisaberbagi_sc_6.webp',
      'assets/screenshot/bisaberbagi/bisaberbagi_sc_7.webp',
      'assets/screenshot/bisaberbagi/bisaberbagi_sc_8.webp',
    ],
  ),
  Project(
    name: 'Alita WMS',
    description: 'Manage warehouse inventory and tracking item delivery status',
    image: 'assets/project/alita.png',
    company: 'PT Fhadira Inovasi Teknologi',
    status: 'Released',
    link: '',
    techs: [
      Tech(icon: 'assets/icon/android.svg', name: 'Android'),
      Tech(icon: 'assets/icon/dart.svg', name: 'Dart'),
      Tech(icon: 'assets/icon/flutter.svg', name: 'Flutter'),
    ],
    screenshots: [
      'assets/screenshot/alita/alita_sc_1.png',
      'assets/screenshot/alita/alita_sc_2.png',
      'assets/screenshot/alita/alita_sc_3.png',
      'assets/screenshot/alita/alita_sc_4.png',
      'assets/screenshot/alita/alita_sc_5.png',
      'assets/screenshot/alita/alita_sc_6.png',
      'assets/screenshot/alita/alita_sc_7.png',
      'assets/screenshot/alita/alita_sc_8.png',
      'assets/screenshot/alita/alita_sc_9.png',
    ],
  ),
];

void showContactDialog(BuildContext context, ThemeController controller) {
  showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: controller.isDark.value
        ? Colors.black.withOpacity(0.8)
        : Colors.white.withOpacity(0.9),
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        content: Obx(
          () => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    size: 42,
                    color:
                        controller.isDark.value ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Let\'s Chat.',
                  style: TextStyle(
                    color:
                        controller.isDark.value ? Colors.white : Colors.black,
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
                  controller: controller,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

String? emailValidator(String? value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return "Masukkan Email";
  } else if (!regExp.hasMatch(value)) {
    return "Format Email Tidak Valid";
  } else {
    return null;
  }
}

String? messageValidator(String? value) {
  if (value!.isEmpty) {
    return "Pesan tidak boleh kosong";
  }
  return null;
}
