import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/components/nav.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Infinite Industries")),
        body: Center(child: Text('LOADING GRAPHIC HERE')),
        endDrawer: NavDrawer(context));
  }
}
