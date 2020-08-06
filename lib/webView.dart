import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewFromHome extends StatefulWidget {
  WebViewFromHome({this.blogUrl});
  final blogUrl;

  @override
  _WebViewFromHomeState createState() => _WebViewFromHomeState();
}

class _WebViewFromHomeState extends State<WebViewFromHome> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('News'),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: WebView(
            initialUrl: widget.blogUrl,
            onWebViewCreated: ((WebViewController webViewController) {
              _controller.complete(webViewController);
            }),
          )),
    );
  }
}
