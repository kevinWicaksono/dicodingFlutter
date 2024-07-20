import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatelessWidget {
  final String url;

  const ArticleWebView({
    super.key,
    required this.url,
  });

  static const routeName = '/article_web_view';

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()..loadRequest(Uri.parse(url));
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
