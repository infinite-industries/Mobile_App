import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/components/top_app_bar.dart';
import 'package:infinite_mobile_app/components/nav.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("landed on error page");
    return Scaffold(
        appBar: InfiniteAppBar(context) as PreferredSizeWidget?,
        body: Center(child: Text('Cute Error Message')),
        endDrawer: NavDrawer(context));
  }
}
