import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/components/top_app_bar.dart';
import 'package:infinite_mobile_app/components/nav.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: InfiniteAppBar(context),
        body: Center(child: Text('Home Screen Mockup')),
        endDrawer: NavDrawer(context));
  }
}
