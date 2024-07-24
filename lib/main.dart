import 'package:dicoding_flutter/SliverListAndSliverGrid/learning_path_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: false,
      ),
      initialRoute: LearningPathPage.routeName,
      routes: {
        LearningPathPage.routeName: (context) => const LearningPathPage(),
      },
    );
  }
}
