import 'package:flutter/material.dart';
import 'package:infinite_mobile_app/components/event_day.dart';
import 'package:infinite_mobile_app/components/event_time.dart';

import 'package:infinite_mobile_app/models/event.dart';
import 'package:infinite_mobile_app/components/markup.dart';
import 'package:infinite_mobile_app/components/textlink.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    Event args = ModalRoute.of(context)!.settings.arguments as Event;
    print(args.title);
    // print(args.dateTimes[0].startTime);

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
              child: Image.network(args.image!)),
          Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 17),
              color: Colors.grey[900],
              alignment: Alignment.centerLeft,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: args.title! + "\n",
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                TextSpan(
                    text: args.venue?.name != null ? args.venue!.name : "",
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 18.0,
                        color: Colors.white,
                        height: 1.8)),
              ]))),
          (args.dateTimes!.length > 0)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: args.dateTimes!.map((element) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(25, 17, 20, 0),
                              child: EventDayDisplay(
                                eventTime: element,
                                style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 17.0)
                              )
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(25, 5, 20, 10),
                              child: EventTimeDisplay(
                                eventTime: element,
                                style: Theme.of(context).textTheme.headline3
                              )
                          ),
                        ]);
                  }).toList())
              : Column(children: [Text("Online Event")]),
          if (args.admissionFee != "none")
            Container(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 17),
                child: Text("Admission Fee: ${args.admissionFee}",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, fontSize: 19.0))),
          Container(
              child: Markup(content: args.description != null ? args.description! : args.briefDescription!)
            ),
          if (showExternalLink(args.websiteLink))
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: TextLink(url: args.websiteLink!, text: "Event Website")
              ),
          if (showExternalLink(args.ticketLink))
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: TextLink(url: args.ticketLink!, text: "EventTicketLink")
              ),
          if (showExternalLink(args.fbEventLink))
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: TextLink(url: args.fbEventLink!, text: "Facebook Event Link")
              ),
          if (showExternalLink(args.eventbriteLink))
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: TextLink(url: args.eventbriteLink!, text: "Eventbrite Link")
              ),
          Container(
            //Just a spacer
            padding: EdgeInsets.fromLTRB(30, 10, 30, 40),
          )
        ]));
  }
}

bool showExternalLink(String? url) {
  return url != null && url != "" && url != "none";
}