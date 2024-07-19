import 'package:dicoding_flutter/NavigationAndRouting/another_sceen.dart';
import 'package:dicoding_flutter/NavigationAndRouting/first_screen.dart';
import 'package:dicoding_flutter/NavigationAndRouting/replacement_screen.dart';
import 'package:dicoding_flutter/NavigationAndRouting/return_data_screen.dart';
import 'package:dicoding_flutter/NavigationAndRouting/second_screen.dart';
import 'package:dicoding_flutter/NavigationAndRouting/second_screen_with_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/secondScreen': (context) => const SecondScreen(),
        '/secondScreenWithData': (context) => SecondScreenWithData(
            ModalRoute.of(context)?.settings.arguments as String),
        '/returnDataScreen': (context) => const ReturnDataScreen(),
        '/replacementScreen': (context) => const ReplacementScreen(),
        '/anotherScreen': (context) => const AnotherScreen(),
      },
    );
  }
}
