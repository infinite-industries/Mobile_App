import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

import 'package:infinite_mobile_app/models/event.dart';
import 'package:url_launcher/url_launcher.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    EventWithFormattedDate args = ModalRoute.of(context).settings.arguments;
    // print(args.incoming_event.description);
    //print(args.incoming_event.websiteLink);

    // MediaQueryData screen_data;
    // screen_data = MediaQuery.of(context);

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
              padding: EdgeInsets.fromLTRB(20, 20, 20, 17),
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
          Container(
              child: Html(
                  data: args.incoming_event.description != null
                      ? args.incoming_event.description
                          .split('<p><br></p>')
                          .toSet()
                          .join(' ')
                      : "",
                  style: {
                    "p": Style(
                      fontFamily: 'serif',
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.all(16.0),
                      fontSize: FontSize(16.0),
                    )
                  },
                  onLinkTap: (url) {
                    //  print("Opening $url...");
                    _launchURL(url);
                  })),
          if (args.incoming_event.websiteLink != "none")
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: GestureDetector(
                  onTap: () {
                    _launchURL(args.incoming_event.websiteLink);
                  },
                  child: Text("Event Website",
                      style:
                          TextStyle(color: Colors.blueAccent, fontSize: 16.0)),
                )),
          if (args.incoming_event.ticketLink != "none")
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: GestureDetector(
                  onTap: () {
                    _launchURL(args.incoming_event.ticketLink);
                  },
                  child: Text("Event Ticket Link",
                      style:
                          TextStyle(color: Colors.blueAccent, fontSize: 16.0)),
                )),
          if (args.incoming_event.fbEventLink != "none")
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: GestureDetector(
                  onTap: () {
                    _launchURL(args.incoming_event.fbEventLink);
                  },
                  child: Text("Facebook Event Link",
                      style:
                          TextStyle(color: Colors.blueAccent, fontSize: 16.0)),
                )),
          if (args.incoming_event.eventbriteLink != "none")
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: GestureDetector(
                  onTap: () {
                    _launchURL(args.incoming_event.eventbriteLink);
                  },
                  child: Text("Eventbrite Link",
                      style:
                          TextStyle(color: Colors.blueAccent, fontSize: 16.0)),
                )),
          Container(
            //Just a spacer
            padding: EdgeInsets.fromLTRB(30, 10, 30, 40),
          )
        ]));
  }
}

_launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
