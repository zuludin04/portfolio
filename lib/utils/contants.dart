import 'package:portfolio/data/experience.dart';
import 'package:portfolio/data/project.dart';

var about =
    "Hallo, saya Zulfikar Mauludin. Saya seorang front-end developer yang berfokus pada aplikasi mobile. Mulai terjun ke dunia developer pada tahun 2017, karena menurut saya membuat aplikasi itu seperti menyelesaikan puzzle dalam kehidupan sehari-hari. Saat ini saya sedang mengerjakan 2 aplikasi utama, yaitu aplikasi muslim dan juga online learning.";

var lorem =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.';

var experiences = [
  Experience(
    company: 'Badan Waqaf Alquran',
    duration: 'Jul 2020 - Present',
    position: 'Mobile Engineer',
    tasks: [
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ],
  ),
  Experience(
    company: 'Waqaftech',
    duration: 'Oct 2021 - Present',
    position: 'Mobile Engineer (Vendor)',
    tasks: [
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ],
  ),
  Experience(
    company: 'PT. Amanah Karya Indonesia',
    duration: 'Jan 2020 - Jun 2020',
    position: 'Mobile Engineer',
    tasks: [
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ],
  ),
];

var projects = [
  Project(
    name: 'Mumtaaz',
    description: lorem,
    image: 'assets/Mumtaaz.png',
    company: 'BWA',
    link: Link(
        type: 1,
        url:
            'https://play.google.com/store/apps/details?id=id.bwa.bwa_wakif_app'),
    techs: [
      Tech(icon: 'assets/android.svg', name: 'Android'),
      Tech(icon: 'assets/dart.svg', name: 'Dart'),
      Tech(icon: 'assets/flutter.svg', name: 'Flutter'),
    ],
  ),
  Project(
    name: 'Pintar Kerja',
    description: lorem,
    image: 'assets/pintar-kerja.png',
    company: 'Waqaftech',
    link: Link(type: 2, url: ''),
    techs: [
      Tech(icon: 'assets/android.svg', name: 'Android'),
      Tech(icon: 'assets/dart.svg', name: 'Dart'),
      Tech(icon: 'assets/flutter.svg', name: 'Flutter'),
    ],
  ),
  Project(
    name: 'During',
    description: lorem,
    image: 'assets/Mumtaaz.png',
    company: 'Personal',
    link: Link(
        type: 1,
        url:
            'https://play.google.com/store/apps/details?id=id.bwa.bwa_wakif_app'),
    techs: [
      Tech(icon: 'assets/android.svg', name: 'Android'),
      Tech(icon: 'assets/dart.svg', name: 'Dart'),
      Tech(icon: 'assets/flutter.svg', name: 'Flutter'),
    ],
  ),
  Project(
    name: 'Bisa Berbagi',
    description: lorem,
    image: 'assets/bisaberbagi.jpg',
    company: 'Amanah',
    link: Link(
        type: 1,
        url:
            'https://play.google.com/store/apps/details?id=com.amanah.bisaberbagi'),
    techs: [
      Tech(icon: 'assets/android.svg', name: 'Android'),
      Tech(icon: 'assets/java.svg', name: 'Java'),
    ],
  ),
  Project(
    name: 'Akademik Pintar Kerja',
    description: lorem,
    image: 'assets/Mumtaaz.png',
    company: 'Waqaftech',
    link: Link(type: 2, url: ''),
    techs: [
      Tech(icon: 'assets/android.svg', name: 'Android'),
      Tech(icon: 'assets/dart.svg', name: 'Dart'),
      Tech(icon: 'assets/flutter.svg', name: 'Flutter'),
    ],
  ),
];
