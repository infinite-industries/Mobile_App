import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/components/top_app_bar.dart';
import 'package:infinite_mobile_app/components/nav.dart';

import 'package:url_launcher/url_launcher.dart';

class Donate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InfiniteAppBar(context) as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10.0),
            child: new Text("Donate", style: Theme.of(context).textTheme.headline1)
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10.0),
            child: RichText(
              text: TextSpan(
                text: "Why we need the funds? ",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(fontStyle: FontStyle.italic),
                children: <TextSpan>[
                  new TextSpan(
                    text: "We are sustained by a mix of volunteer and paid activities. We try to pay our interns for doing research and outreach tasks and generally behave like solid human beings. We are also very much interested in ramping up our outreach activities to grow our positive impact on folks around us - so in the not-too-distant future, this means hiring a dedicated staff person. Also, occasionally we commission artists to create stickers and other materials we use for promotion.",
                    style: TextStyle(fontStyle: FontStyle.normal)
                  )
                ]
              )
            )
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: ElevatedButton(
                child: Text('Please Donate via PayPal'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  onPrimary: Colors.grey[900]
                ),
                onPressed: _launchURL
              )
            )
          )
        ])
      ),
      endDrawer: NavDrawer(context)
    );
  }
}

_launchURL() async {
  const url = 'https://www.paypal.com/biz/fund?id=GCF56FD8ARSD6';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
