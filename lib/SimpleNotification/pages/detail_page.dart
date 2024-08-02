import 'package:dicoding_flutter/SimpleNotification/utils/received_notification.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail_page';

  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ReceivedNotification arg =
        ModalRoute.of(context)?.settings.arguments as ReceivedNotification;
    return Scaffold(
      appBar: AppBar(
        title: Text('Title: ${arg.payload}'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
