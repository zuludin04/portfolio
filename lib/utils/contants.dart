import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/experience.dart';
import 'package:portfolio/data/project.dart';
import 'package:portfolio/ui/controller/theme_controller.dart';
import 'package:portfolio/ui/widgets/sliding_button.dart';

var about =
    "Hallo, saya Zulfikar Mauludin. Saya seorang front-end developer yang berfokus pada aplikasi mobile. Mulai terjun ke dunia developer pada tahun 2017, karena menurut saya membuat aplikasi itu seperti menyelesaikan puzzle dalam kehidupan sehari-hari. Saat ini saya sedang mengerjakan 2 aplikasi utama, yaitu aplikasi muslim dan juga online learning.";

var experiences = [
  Experience(
    company: 'Badan Waqaf Alquran',
    duration: 'Jul 2020 - Present',
    position: 'Mobile Engineer',
    tasks: [
      'Membuat aplikasi muslim yang dapat mudah diakses oleh orang banyak',
      'Membangun aplikasi mobile dengan flutter dari awal beserta dengan arsitekturnya',
    ],
  ),
  Experience(
    company: 'Waqaftech',
    duration: 'Oct 2021 - Present',
    position: 'Mobile Engineer (Vendor)',
    tasks: [
      'Membangun aplikasi mobile dengan flutter dari awal beserta dengan arsitekturnya',
      'Membuat aplikasi akademik mobile mulai dari Online Learning sampai LMS',
      'Bertanggung jawab agar aplikasi dapat berjalan dengan baik',
    ],
  ),
  Experience(
    company: 'PT. Amanah Karya Indonesia',
    duration: 'Jan 2020 - Jun 2020',
    position: 'Mobile Engineer',
    tasks: [
      'Bertanggung jawab agar fitur Replenishment berjalan dengan baik pada aplikasi Toyota (TMIIN)',
      'Memastikan agar aplikasi BisaBerbagi bisa release dan semua fitur dapat berjalan dengan baik',
      'Memperbaiki kode aplikasi BisaBerbagi agar lebih robust',
    ],
  ),
];

var projects = [
  Project(
    name: 'Mumtaaz',
    description:
        'Aplikasi muslim untuk Wakif (user) BWA agar bisa berdonasi dengan mudah',
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
        'Aplikasi online learning berbasis Flutter yang bisa dipakai oleh siapa saja',
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
    description:
        'Aplikasi pencacatan pengeluaran dan pemasukan, agar dapat dengan mudah ditinjau',
    image: 'assets/project/during.png',
    company: 'Personal',
    status: 'Released',
    link: 'https://play.google.com/store/apps/details?id=com.app.zuludin.during.during',
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
        'Apliasi berbasis muslimah yang juga menampung salah satu produk PT. Amanah yaitu BerbagiLink',
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
