import 'package:dicoding_flutter/NewsApp/Widgets/wg_custom_scaffold.dart';
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
    return WgCustomScaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
