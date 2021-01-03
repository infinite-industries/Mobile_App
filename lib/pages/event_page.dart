import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/models/event.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Text('Event Page Proto Test'),
      TextButton(
        child: Text('Back'),
        onPressed: () => Navigator.pop(context),
      )
    ]));
  }
}
