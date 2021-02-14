import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget InfiniteCardTemplate(context, data) {
  String event_date_and_day;
  String event_times;

  MediaQueryData screen_data;
  screen_data = MediaQuery.of(context);

  if (data.dateTimes.length > 0) {
    DateTime startEvent = DateTime.tryParse(data.dateTimes[0].startTime);
    DateTime endEvent = DateTime.tryParse(data.dateTimes[0].endTime);

    if ((startEvent != null) && (endEvent != null)) {
      event_date_and_day = DateFormat('EEEE, MMMM d').format(startEvent);
      event_times = DateFormat('h:mm a').format(startEvent) +
          " - " +
          DateFormat('h:mm a').format(endEvent);

      print(DateFormat('EEEE, MMMM d h:mm a').format(startEvent) +
          " - " +
          DateFormat('h:mm a').format(endEvent));
    } else {
      event_date_and_day = "invalid date";
      event_times = "invalid times";
    }
  } else {
    event_date_and_day = "Online Resource";
    event_times = "";
  }
  return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.network(data.image,
                  width: screen_data.size.width, height: 200),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(data.title,
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
              // ? need to think this one through -- Text(data.venue),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(event_date_and_day,
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16.0,
                        )),
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(event_times,
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16.0,
                        )),
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(data.briefDescription,
                        style: TextStyle(
                          fontFamily: 'EBGaramond',
                          fontSize: 16.0,
                        )),
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  width: double.infinity,
                  child: TextButton(
                    child: Text('More Info'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.black,
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                    onPressed: () {
                      print('Pressed');
                      Navigator.pushNamed(context, '/event_page');
                    },
                  ))
            ],
          )));
}
