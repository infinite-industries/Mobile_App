import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/components/top_app_bar.dart';
import 'package:infinite_mobile_app/components/nav.dart';

class Donate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: InfiniteAppBar(context),
        body: Center(child: Text('Donate Screen Mockup')),
        endDrawer: NavDrawer(context));
  }
}
