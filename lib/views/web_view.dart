// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebView extends StatefulWidget {
//   const WebView({super.key, required JavaScriptMode javascriptMode, required Future<String?> Function() initialUrl});

//   @override
//   State<WebView> createState() => _WebViewState();
// }

// class _WebViewState extends State<WebView> {
  
//   final controller = WebViewController()
//   ..setJavaScriptMode(JavaScriptMode.disabled)
//   ..loadRequest(Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=aa814ed054b649458c0dc3089981abd8'));
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: WebViewWidget(controller:controller));
//   }
// }