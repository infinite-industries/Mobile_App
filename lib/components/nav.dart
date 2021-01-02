import 'package:flutter/material.dart';

Widget NavDrawer(BuildContext context) {
  return Drawer(
      child: ListView(
    children: <Widget>[
      ListTile(
        title: Text('Home'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/loading');
        },
      ),
      ListTile(
        title: Text('Mission'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/mission');
        },
      ),
      ListTile(
        title: Text('Legal'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/legal');
        },
      ),
      ListTile(
        title: Text('Donate'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/donate');
        },
      ),
      ListTile(
        title: Text('Contact'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/contact');
        },
      ),
    ],
  ));
}
