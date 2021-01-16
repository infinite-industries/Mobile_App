import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:infinite_mobile_app/components/top_app_bar.dart';
import 'package:infinite_mobile_app/components/nav.dart';

class Mission extends StatefulWidget {
  @override
  MissionState createState() {
    return MissionState();
  }
}

class MissionState extends State<Mission> {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: InfiniteAppBar(context),
        body: WebView(
          initialUrl: 'about:blank',
          onWebViewCreated: (WebViewController webViewController) {
            _controller = webViewController;
            _loadHtmlFromAssets();
          },
        ),
        endDrawer: NavDrawer(context));
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/html/mission.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}
