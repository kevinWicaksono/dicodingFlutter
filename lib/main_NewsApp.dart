// import 'package:dicoding_flutter/NewsApp/article.dart';
// import 'package:dicoding_flutter/NewsApp/article_web_view.dart';
// import 'package:dicoding_flutter/NewsApp/detail_page.dart';
// import 'package:dicoding_flutter/NewsApp/news_list_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

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
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
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
