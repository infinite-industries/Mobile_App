import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

import 'package:infinite_mobile_app/models/event.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

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
                    DateTime? startEvent = DateTime.tryParse(element.startTime!);
                    DateTime? endEvent = DateTime.tryParse(element.endTime!);

                    String event_date_and_day = "Invalid Date";
                    String event_times = "Invalid Times";
                    if ((startEvent != null) && (endEvent != null)) {
                      event_date_and_day =
                          DateFormat('EEEE, MMMM d').format(startEvent);
                      event_times = DateFormat('h:mm a').format(startEvent) +
                          " - " +
                          DateFormat('h:mm a').format(endEvent);
                    }
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(25, 17, 20, 0),
                              child: Text(event_date_and_day,
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0,
                                  ))),
                          Padding(
                              padding: EdgeInsets.fromLTRB(25, 5, 20, 10),
                              child: Text(event_times,
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16.0,
                                  ))),
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
              child: Html(
                  data: args.description != null
                      ? args.description!.split('<p><br></p>').toSet().join(' ')
                      : "",
                  style: {
                    "p": Style(
                      fontFamily: 'serif',
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.all(16.0),
                      fontSize: FontSize(16.0),
                    )
                  },
                  onLinkTap: (url, renderContext, map, element) {
                    //  print("Opening $url...");
                    _launchURL(url);
                  })),
          if ((args.websiteLink != "none") && (args.websiteLink != ""))
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: GestureDetector(
                  onTap: () {
                    _launchURL(args.websiteLink);
                  },
                  child: Text("Event Website",
                      style:
                          TextStyle(color: Colors.blueAccent, fontSize: 16.0)),
                )),
          if ((args.ticketLink != "none") && (args.ticketLink != ""))
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: GestureDetector(
                  onTap: () {
                    _launchURL(args.ticketLink);
                  },
                  child: Text("Event Ticket Link",
                      style:
                          TextStyle(color: Colors.blueAccent, fontSize: 16.0)),
                )),
          if ((args.fbEventLink != "none") && (args.fbEventLink != ""))
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: GestureDetector(
                  onTap: () {
                    _launchURL(args.fbEventLink);
                  },
                  child: Text("Facebook Event Link",
                      style:
                          TextStyle(color: Colors.blueAccent, fontSize: 16.0)),
                )),
          if ((args.eventbriteLink != "none") && (args.eventbriteLink != ""))
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: GestureDetector(
                  onTap: () {
                    _launchURL(args.eventbriteLink);
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

class _DateAndTime {
  String? event_date_and_day;
  String? event_times;
}

_launchURL(url) async {
  print("try opening" + url);
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
