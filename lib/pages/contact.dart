import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/components/top_app_bar.dart';
import 'package:infinite_mobile_app/components/nav.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: InfiniteAppBar(context) as PreferredSizeWidget?,
        body: Center(child: Text('Contact Mockup')),
        endDrawer: NavDrawer(context));
  }
}
