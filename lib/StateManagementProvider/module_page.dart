import 'package:dicoding_flutter/StateManagementProvider/done_module_list.dart';
import 'package:dicoding_flutter/StateManagementProvider/module_list.dart';
import 'package:flutter/material.dart';

class ModulePage extends StatelessWidget {
  ModulePage({super.key});

  final List<String> doneModuleList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemrograman Dengan Dart'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const DoneModuleList(),
                ),
              );
            },
          ),
        ],
      ),
      body: const ModuleList(),
    );
  }
}
