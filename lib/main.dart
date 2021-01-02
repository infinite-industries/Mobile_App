import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/pages/loading.dart';
import 'package:infinite_mobile_app/pages/home.dart';
import 'package:infinite_mobile_app/pages/contact.dart';
import 'package:infinite_mobile_app/pages/donate.dart';
import 'package:infinite_mobile_app/pages/legal.dart';
import 'package:infinite_mobile_app/pages/mission.dart';
import 'package:infinite_mobile_app/pages/error_page.dart';

void main() => runApp(MaterialApp(initialRoute: '/loading', routes: {
      '/loading': (context) => Loading(),
      '/home': (context) => Home(),
      '/contact': (context) => Contact(),
      '/donate': (context) => Donate(),
      '/legal': (context) => Legal(),
      '/mission': (context) => Mission(),
      '/error': (context) => ErrorPage(),
    }));
