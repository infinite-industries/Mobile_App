import 'package:flutter/material.dart';

Widget InfiniteCardTemplate(context, data) {
  return Card(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(data.title),
              TextButton(
                child: Text('More Info'),
                style: TextButton.styleFrom(
                  primary: Colors.teal,
                  side: BorderSide(color: Colors.red, width: 5),
                ),
                onPressed: () {
                  print('Pressed');
                  Navigator.pushNamed(context, '/event_page');
                },
              )
            ],
          )));
}
