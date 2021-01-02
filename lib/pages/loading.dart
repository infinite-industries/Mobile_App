import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:infinite_mobile_app/services/infinite_events.dart';

import 'package:infinite_mobile_app/components/top_app_bar.dart';
import 'package:infinite_mobile_app/components/nav.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getAllEventsFromInfinite() async {
    print("test API call");
    InfiniteAPI infinite_api = InfiniteAPI();
    // TODO: Need better naming conventions here!
    await infinite_api.getEvents();
    print(infinite_api.events);
  }

  @override
  void initState() {
    super.initState();
    getAllEventsFromInfinite();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: InfiniteAppBar(context),
        endDrawer: NavDrawer(context),
        body: Center(
            child: SpinKitRing(
          color: Colors.white,
          size: 100.0,
        )));
  }
}
