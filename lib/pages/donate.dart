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
              child: new Text("Donate",
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10.0),
                child: RichText(
                  text: TextSpan(
                      text: "Why we need the funds? ",
                      style: TextStyle(
                          fontFamily: 'EBGaramond',
                          fontSize: 16.0,
                          color: Colors.black,
                          fontStyle: FontStyle.italic),
                      children: <TextSpan>[
                        new TextSpan(
                          text:
                              "We are sustained by a mix of volunteer and paid activities. We try to pay our interns for doing research and outreach tasks and generally behave like solid human beings. We are also very much interested in ramping up our outreach activities to grow our positive impact on folks around us - so in the not-too-distant future, this means hiring a dedicated staff person. Also, occasionally we commission artists to create stickers and other materials we use for promotion.",
                          style: TextStyle(fontStyle: FontStyle.normal),
                        )
                      ]),
                )),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: RaisedButton(
                    onPressed: _launchURL,
                    child: Text('Please Donate via PayPal'),
                  ),
                ))
          ]),
        ),
        endDrawer: NavDrawer(context));
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
