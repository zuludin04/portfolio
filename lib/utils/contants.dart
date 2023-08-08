import 'package:portfolio/data/experience.dart';
import 'package:portfolio/data/project.dart';

var about =
    "Mobile engineer with 5 years of experience building mobile applications with android native language or Flutter. Managed to build mobile version of shorten link website with thousands visits daily; deployed applications to Google Play Store with more than thousands of download";

var experiences = [
  Experience(
    company: 'Badan Waqf Alquran',
    duration: 'July 2020 - Present',
    position: 'Lead Mobile Engineer',
    tasks: [
      'Deployed a mobile application to contain company’s donation campaign, for more than 10K existing users',
      'Strengthened employee attendance application, to reduce bug and increase user experience',
      'Increased user engagement by developing community feature, so user can create or join community to recite Al-Quran together',
    ],
  ),
  Experience(
    company: 'PT Fhadira Inovasi Teknologi',
    duration: 'July 2022 - December 2022',
    position: 'Mobile Engineer',
    tasks: [
      'Released warehouse management application, to increase 100 more employees productivity and cut down paperwork by 90%',
      'Coordinated with backend engineer to create warehouse management system',
      'Built an employee on-site application and removed bug that always occur when taking a picture',
    ],
  ),
  Experience(
    company: 'Waqaftech',
    duration: 'October 2021 - July 2022',
    position: 'Lead Mobile Engineer',
    tasks: [
      'Coordinated with 6 developers to create an learning management system and deployed for more than 20 schools',
      'Collaborated with product designer to develop application design and system',
    ],
  ),
  Experience(
    company: 'PT Amanah Karya Indonesia',
    duration: 'January 2020 - June 2020',
    position: 'Mobile Engineer',
    tasks: [
      'Designed new features for existing application to help employee sort and scan 1K incoming items',
      'Analyzed existing project with more than 10K lines of code to be more robust and follow clean architecture principle',
      'Released a mobile application to Play Store that was download for more than 1K times',
    ],
  ),
];

var projects = [
  Project(
    name: 'Mumtaaz',
    description:
        'Muslim application for BWA\'s Wakif (user), so they can donate with ease',
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
    name: 'Nyarios',
    description:
        'Real-time chatting app using Flutter and Firebase as database',
    image: 'assets/project/nyarios.png',
    company: 'Personal',
    link: 'https://github.com/zuludin04/nyarios/raw/main/download/nyarios.apk',
    status: 'Released',
    techs: [
      Tech(icon: 'assets/icon/android.svg', name: 'Android'),
      Tech(icon: 'assets/icon/dart.svg', name: 'Dart'),
      Tech(icon: 'assets/icon/flutter.svg', name: 'Flutter'),
    ],
    screenshots: [
      'assets/screenshot/nyarios/nyarios_sc_1.webp',
      'assets/screenshot/nyarios/nyarios_sc_2.webp',
      'assets/screenshot/nyarios/nyarios_sc_3.webp',
      'assets/screenshot/nyarios/nyarios_sc_4.webp',
      'assets/screenshot/nyarios/nyarios_sc_5.webp',
      'assets/screenshot/nyarios/nyarios_sc_6.webp',
      'assets/screenshot/nyarios/nyarios_sc_7.webp',
    ],
  ),
  Project(
    name: 'During',
    description:
        'Save your daily transactions with this user-friendly application',
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
        'An application by Amanah Corporation for every Muslim in the world',
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
    description:
        'Manage Alita Praya Mitra warehouse inventory and track item delivery status',
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
