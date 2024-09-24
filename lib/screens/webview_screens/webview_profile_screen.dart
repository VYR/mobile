import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewProfile extends StatefulWidget {
  const WebViewProfile({super.key});

  @override
  State<WebViewProfile> createState() => _WebViewProfileState();
}

class _WebViewProfileState extends State<WebViewProfile> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(
        Uri.parse('https://kuberascheme.com/mobile-app/page15'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 0,
        backgroundColor: const Color.fromRGBO(128, 50, 224, 1),
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        leading: IconButton(onPressed: (){
                  print('pressed');
                }, 
                icon: const Icon(Icons.arrow_back)),
        title: const Text("Profile"),
      ),

      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
