import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/components/event_day.dart';
import 'package:infinite_mobile_app/components/event_time.dart';

Widget InfiniteCardTemplate(context, data) {

  MediaQueryData screen_data;
  screen_data = MediaQuery.of(context);

  bool isOnlineResource = data.dateTimes.length == 0;

  return Card(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.network(data.image,
                  width: screen_data.size.width, height: 200),
              Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 17),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(data.title,
                        style: Theme.of(context).textTheme.headline1
                      ),
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Colors.black,
                        size: 25.0,
                      ),
                      Text(data.venue != null ? data.venue.name : "",
                          style: Theme.of(context).textTheme.headline2
                      )
                    ],
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(15, 17, 15, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: isOnlineResource ?
                    Text('Online Resource', style: Theme.of(context).textTheme.headline3) :
                    EventDayDisplay(
                      eventTime: data.dateTimes[0],
                      style: Theme.of(context).textTheme.headline3
                    )
                )
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: isOnlineResource ?
                    Text('', style: Theme.of(context).textTheme.headline3) :
                    EventTimeDisplay(
                      eventTime: data.dateTimes[0],
                      style: Theme.of(context).textTheme.headline3
                    )
                )
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
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
                      Navigator.pushNamed(context, '/event_page',
                          arguments: data);
                    },
                  ))
            ],
          )));
}
