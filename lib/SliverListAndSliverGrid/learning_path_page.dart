import 'package:dicoding_flutter/SliverListAndSliverGrid/learning_path_list.dart';
import 'package:flutter/material.dart';

class LearningPathPage extends StatelessWidget {
  static const String routeName = '/learning_path';

  const LearningPathPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicoding Learning Paths'),
      ),
      body: const LearningPathList(),
    );
  }
}
