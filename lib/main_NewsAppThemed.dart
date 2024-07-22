// import 'package:dicoding_flutter/NewsApp/Theming/text_theme.dart';
// import 'package:dicoding_flutter/NewsApp/article.dart';
// import 'package:dicoding_flutter/NewsApp/article_web_view.dart';
// import 'package:dicoding_flutter/NewsApp/detail_page.dart';
// import 'package:dicoding_flutter/NewsApp/news_list_page.dart';
// import 'package:dicoding_flutter/NewsApp/Theming/styles.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'News App',
//       theme: ThemeData(
//         colorScheme: Theme.of(context).colorScheme.copyWith(
//               primary: primaryColor,
//               onPrimary: Colors.black,
//               secondary: secondaryColor,
//             ),
//         textTheme: myTextTheme,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         appBarTheme: const AppBarTheme(elevation: 0.8),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: secondaryColor,
//             foregroundColor: Colors.white,
//             textStyle: const TextStyle(),
//             shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(4),
//               ),
//             ),
//           ),
//         ),
//         useMaterial3: false,
//       ),
//       initialRoute: NewsListPage.routeName,
//       routes: {
//         NewsListPage.routeName: (context) => const NewsListPage(),
//         DetailPage.routeName: (context) => DetailPage(
//             article: ModalRoute.of(context)?.settings.arguments as Article),
//         ArticleWebView.routeName: (context) => ArticleWebView(
//             url: ModalRoute.of(context)?.settings.arguments as String),
//       },
//     );
//   }
// }
