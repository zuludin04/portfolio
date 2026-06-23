export interface Slide {
  emoji: string;
  label: string;
  bgFrom: string;
  bgTo: string;
  url?: string;
}

export interface Project {
  id: number;
  slides: string[];
  category: string;
  title: string;
  desc: string;
  tags: string[];
  features: string[];
  github: string | null;
  playstore: string | null;
  appstore: string | null;
}

export interface Experience {
  period: string;
  role: string;
  company: string;
  desc: string;
  techStacks: string;
}

export interface ContactLink {
  icon: string;
  label: string;
  value: string;
  url: string;
}

export const projects: Project[] = [
  {
    id: 0,
    slides: [
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/mcode/mcode1.jpg",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/mcode/mcode2.jpg",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/mcode/mcode3.jpg",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/mcode/mcode4.jpg",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/mcode/mcode5.jpg",
    ],
    category: "Productivity · Tracker · Android · iOS",
    title: "MCode PLN Services",
    desc: "A mobile application for tracking and managing company service requests, providing users with real-time updates and notifications.",
    tags: [
      "Flutter",
      "Dart",
      "Bloc/Cubit",
      "Dio",
      "Android",
      "iOS",
      "JavaScript",
      "NodeJS",
      "MySQL",
    ],
    features: [
      "Scan and track invoice document using QR code",
      "Push notification for invoice status updates",
      "Generate PDF report for invoice history",
      "Admin dashboard for managing invoice data",
    ],
    github: null,
    playstore: null,
    appstore: null,
  },
  {
    id: 1,
    slides: [
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/maxon/maxon1.webp",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/maxon/maxon2.webp",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/maxon/maxon3.webp",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/maxon/maxon4.webp",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/maxon/maxon5.webp",
    ],
    category: "Productivity · Android · iOS",
    title: "Maxon Filtration Pump",
    desc: "A digital solution for selecting water pumps quickly, accurately, and efficiently.",
    tags: ["Flutter", "Dart", "Bloc/Cubit", "Dio", "Android", "iOS"],
    features: [
      "Complex engineering calculation logic for pump selection",
      "Intuitive UI with real-time feedback",
      "PDF report generation for selected pumps",
      "Use AI to suggest optimal pump models based on user requirements",
    ],
    github: null,
    playstore: "https://play.google.com/store/apps/details?id=id.maxon.maxon",
    appstore: "https://apps.apple.com/us/app/maxon-pumpcalc/id6748975011",
  },
  {
    id: 2,
    slides: [
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/agtran/agtran1.webp",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/agtran/agtran2.webp",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/agtran/agtran3.webp",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/agtran/agtran4.webp",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/agtran/agtran5.webp",
    ],
    category: "Productivity · Android · iOS",
    title: "Xcess by Agtran",
    desc: "Xcess is a car rental management app for the partners of Agtran.",
    tags: ["Flutter", "Dart", "Provider", "Android", "iOS"],
    features: [
      "Real-time booking management and notifications",
      "Statistic to monitor the growth and performance of the business",
      "Arranging car rental reservations",
    ],
    github: null,
    playstore: "https://play.google.com/store/apps/details?id=com.agtran.xcess",
    appstore: "https://apps.apple.com/us/app/xcess-by-agtran/id1600419028",
  },
  {
    id: 3,
    slides: [
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/buqu/buqu1.png",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/buqu/buqu2.png",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/buqu/buqu3.png",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/buqu/buqu4.png",
    ],
    category: "Book · Android",
    title: "BuQu",
    desc: "BuQu is a mobile application focused on helping users capture, organize, and connect ideas while reading books.",
    tags: [
      "Jetpack Compose",
      "Kotlin",
      "MVI",
      "Room Database",
      "Hilt",
      "Google Book API",
    ],
    features: [
      "Save quotes (text or image-based)",
      "Scan and search book covers",
      "Create Boards to visually connect ideas using nodes and relationships",
      "Generate shareable quote images",
    ],
    github: "https://github.com/zuludin04/buqu",
    playstore: "https://apkpure.com/p/com.app.zuludin.buqu",
    appstore: null,
  },
  {
    id: 4,
    slides: [
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/during/during1.png",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/during/during2.png",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/during/during3.png",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/during/during4.png",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/during/during5.png",
      "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/during/during6.png",
    ],
    category: "Finance · Flutter · Android",
    title: "During",
    desc: "Save your daily transactions with this user-friendly application.",
    tags: ["Flutter", "Dart", "Bloc/Cubit", "Android"],
    features: [
      "Track daily expenses and income with an intuitive interface",
      "Chart visualization to analyze spending habits and financial trends",
      "Customizable categories and tags for better organization",
    ],
    github: "https://github.com/zuludin04/during",
    playstore: null,
    appstore: null,
  },
];

export const skills: string[] = [
  // Android
  "🤖 Android SDK",
  "🎨 Jetpack Compose",
  "⚡ Kotlin",
  "🏗️ MVVM",
  "🔄 Coroutines",
  "💾 Room Database",
  "🌐 Retrofit",
  "💉 Hilt / Dagger",
  "🧪 Unit Testing",
  "🗂️ Clean Architecture",
  "🔥 Firebase",
  "🗺️ Google Maps",
  "🐙 Git / GitHub",
  "📦 Gradle",
  "🌊 Flow / LiveData",
  "🚀 KMP",
  // Flutter
  "💙 Flutter",
  "🎯 Dart",
  "🧱 BLoC / Cubit",
  "🌿 Riverpod",
  "🗄️ Hive",
  "🎭 Flutter Animations",
  "📱 Adaptive UI",
  "🔗 Dio",
  "🧪 Widget Testing",
  "📦 Pub.dev",
  "🍎 iOS Deployment",
  "🌐 Flutter Web",
];

export const experience: Experience[] = [
  {
    role: "Mobile Engineer (Freelance)",
    company: "PT Maxon Prime Technology",
    period: "Apr 2025 – Dec 2025",
    desc: "Mobile engineer who designed and developed a production-ready Flutter application from scratch, handling the full lifecycle from architecture to deployment. Implemented complex filtering and engineering calculation logic to improve industrial pump selection accuracy for clients.",
    techStacks: "Flutter, Dart",
  },
  {
    role: "Full-Stack Mobile Engineer",
    company: "PT Fusi Solusi Transformasi",
    period: "Mar 2024 – Dec 2024",
    desc: "Designed and developed internal enterprise applications used by 200+ employees for invoice tracking, using scalable Clean Architecture principles. Collaborated with cross-functional teams to deliver solutions aligned with business and operational goals.",
    techStacks: "Flutter, Dart, JavaScript, NodeJS, MySQL",
  },
  {
    role: "Mobile Engineer",
    company: "Badan Wakaf AlQuran",
    period: "Jul 2020 – Sep 2023",
    desc: "Developed and deployed a donation campaign mobile application serving 10,000+ users while leading and mentoring a team of 3 mobile engineers. Improved application stability by reducing bugs by 40% through architecture refactoring and enhanced internal operations by revamping an attendance system used by 300+ employees.",
    techStacks: "Flutter, Dart, Kotlin, JavaScript",
  },
  {
    role: "Android Developer",
    company: "PT Amanah Karya Indonesia",
    period: "Jan 2020 – Jun 2020",
    desc: "Introduced workflow improvements that increased employee efficiency by 20% and refactored 10,000+ lines of legacy code to improve maintainability by 25%. Also released a mobile application on the Google Play Store, achieving 1,000+ downloads.",
    techStacks: "Kotlin, Java",
  },
];

export const contactLinks: ContactLink[] = [
  {
    icon: "✉️",
    label: "Email",
    value: "zulfikar@email.com",
    url: "mailto:zulfikar.mauludin29@gmail.com",
  },
  {
    icon: "🐙",
    label: "GitHub",
    value: "github.com/zuludin",
    url: "https://github.com/zuludin04",
  },
  {
    icon: "💼",
    label: "LinkedIn",
    value: "linkedin.com/in/zulfikar",
    url: "https://www.linkedin.com/in/zulfikar-mauludin-5982b3151/",
  },
];
