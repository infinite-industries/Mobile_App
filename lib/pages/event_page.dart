import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/models/event.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    EventWithFormattedDate args = ModalRoute.of(context).settings.arguments;
    print(args.incoming_event.title);

    MediaQueryData screen_data;
    screen_data = MediaQuery.of(context);

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[900],
            title: Text("Infinite Industries")),
        body: ListView(children: [
          Container(
              color: Colors.grey[900],
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Image.network(args.incoming_event.image)),
          Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 17),
              color: Colors.grey[900],
              alignment: Alignment.centerLeft,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: args.incoming_event.title + "\n",
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                TextSpan(
                    text: args.incoming_event.venue.name != null
                        ? args.incoming_event.venue.name
                        : "",
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 18.0,
                        color: Colors.white,
                        height: 1.8)),
              ]))),
        ]));
  }
}
