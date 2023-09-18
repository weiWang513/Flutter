import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TestWebView extends StatefulWidget {
  const TestWebView({super.key, required this.url});

  final String url;

  @override
  State<StatefulWidget> createState() => _TestWebView();
}

class _TestWebView extends State<TestWebView> {
  late final WebViewController controller;
  double height = 0;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('T')),
        body: SafeArea(
          child: Column(children: [
            Expanded(
                child: WebViewWidget(
              controller: controller,
            ))
          ]),
        ));
  }
}
