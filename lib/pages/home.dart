import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/models/event.dart';

import 'package:infinite_mobile_app/components/top_app_bar.dart';
import 'package:infinite_mobile_app/components/nav.dart';
import 'package:infinite_mobile_app/components/card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List events = [];
  List<Event> deserialized_events = [];

  @override
  Widget build(BuildContext context) {
    print("testing Home");
    deserialized_events = [];
    events = ModalRoute.of(context).settings.arguments;
    // In the future, implement pagination here or pass paginated data to home??

    for (var event_map in events) {
      final eventObject = Event.fromMap(event_map);
      deserialized_events.add(eventObject);
    }

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: InfiniteAppBar(context),
        body: ListView(
          children: deserialized_events
              .map((event) => InfiniteCardTemplate(context, event))
              .toList(),
        ),
        endDrawer: NavDrawer(context));
  }
}
