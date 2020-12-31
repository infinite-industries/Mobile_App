import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/components/nav.dart';

class Donate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Infinite Industries")),
        body: Center(child: Text('Donate Screen Mockup')),
        endDrawer: NavDrawer(context));
  }
}
