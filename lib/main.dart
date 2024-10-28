import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebView App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const WebViewExample(),
    );
  }
}

class WebViewExample extends StatelessWidget {
  const WebViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView Example'),
      ),
      body: const WebView(
        initialUrl: 'https://yourwebsite.com', // Replace with your URL
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
