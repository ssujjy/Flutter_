import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NaverPage extends StatefulWidget {
  const NaverPage({super.key});

  @override
  State<NaverPage> createState() => _NaverPageState();
}

class _NaverPageState extends State<NaverPage> {
  late WebViewController controller; 
  late bool isLoading; 
  late String siteName; 

  @override
  void initState() {
    super.initState();
    isLoading = true; 
    siteName = "www.daum.net";

    controller = WebViewController()
    // controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (progress) {
          isLoading = true; 
          setState(() {});
        },
        onPageStarted: (url) {
          isLoading = true; 
          setState(() {});
        },
        onPageFinished: (url) {
          isLoading = false; 
          setState(() {});
        },
        onWebResourceError: (error) {
          isLoading = false; 
          setState(() {});
        },
      )
    )
    ..loadRequest(Uri.parse("https://$siteName"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text(''),
    );
  }
}