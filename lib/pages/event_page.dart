import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/models/event.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    Event data = ModalRoute.of(context).settings.arguments;
    print(data.title);
    return Scaffold(
        body: ListView(children: [
      Text("testing"),
      TextButton(
        child: Text('Back'),
        onPressed: () => Navigator.pop(context),
      )
    ]));
  }
}
