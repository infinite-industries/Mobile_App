import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/components/top_app_bar.dart';
import 'package:infinite_mobile_app/components/nav.dart';

import 'package:url_launcher/url_launcher.dart';

class Legal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: InfiniteAppBar(context) as PreferredSizeWidget?,
        body: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text("Legal",
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                  child: new Text(
                    "We care about your rights and your understanding of the legal framework of the services you use. So we are not hiding this information behind some out of the way link on our site. Here is a human-readable summary of the info in the Terms of Service and Privacy Policy.",
                    style: TextStyle(
                        fontFamily: 'EBGaramond',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                      "Be a good human; don’t send us things that you don’t actually own.",
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                  child: new Text(
                    "We’re accepting of most definitions of fair use, but if the original copyright holders take issue with something you have published on our site, we have to take it down.",
                    style: TextStyle(fontFamily: 'EBGaramond', fontSize: 16.0),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                      "We strive to be good humans; we’ll NEVER reveal ANY personal information to a third-party.",
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                  child: new Text(
                    "That is simply not in our code. This project is open-source, so this statement is truly independently verifiable. We do share anonymized aggregated data with community leaders and businesses folks; like how many shows happened at a particular zip code and all the fun economic arguments for having Art, Theater and Music around, backed up by real data.",
                    style: TextStyle(fontFamily: 'EBGaramond', fontSize: 16.0),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text("Please don’t spam us.",
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                  child: new Text(
                    "This is really reserved for blatant spammy stuff that is, alas, inevitable when one puts an open form up on the interwebs. But bear in mind, we’ll review the content you give us and we do reserve the right to take it down.",
                    style: TextStyle(fontFamily: 'EBGaramond', fontSize: 16.0),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text("Please don’t scrape us.",
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                  child: new Text(
                    "As in write scripts that slurp up the data on the site. Be nice and we will give you stuff for free. Don’t slam our poor servers and increase our co\$ts.",
                    style: TextStyle(fontFamily: 'EBGaramond', fontSize: 16.0),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                      "We ask for some rights to the things you give us, but we have really good reasons.",
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                  child: new Text(
                    "It’s mainly so we can promote your events everywhere; our web page, social media, printed materials, the works.",
                    style: TextStyle(fontFamily: 'EBGaramond', fontSize: 16.0),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text("We do not \"track\" you with our cookies.",
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                  child: new Text(
                    "Cookies are bits of code that sit on your machine and remember the history of your site usage. We use our cookies to make your experience on our site easier and more intuitive. Like remembering your favorite setting; never spying on your activities.",
                    style: TextStyle(fontFamily: 'EBGaramond', fontSize: 16.0),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                      "We do use third-party software for analytics (specifically Google and Yandex) and these guys do track you...",
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                  child: new Text(
                    "We need them right now to get aggregated, anonymized user data. For example, we can see how many visitors we get per week, but we do not know your name or what you order at Starbucks. Or if you’ve abandoned Starbucks to go local. Aggregated data helps us when we apply for grants (we are a non-profit after all), and helps us set realistic goals for growing the site. The bits of code that these folks represent are basically on every website you visit these days. If you categorically have issues with them, we recommend using Privacy Badger, Ghostery, or something similar.",
                    style: TextStyle(fontFamily: 'EBGaramond', fontSize: 16.0),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                      "We wrote a few custom scripts for similar analytical purposes.",
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                  child: new Text(
                    "These give us info on specific UI elements, like the \"add to calendar\" feature. This basically helps us to confirm that a specific feature is important, or if you think it’s garbage and we should abandon it for the site’s next iteration.",
                    style: TextStyle(fontFamily: 'EBGaramond', fontSize: 16.0),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 40.0),
                    child: new RichText(
                      text: new TextSpan(
                          style: TextStyle(
                              fontFamily: 'EBGaramond',
                              fontSize: 18.0,
                              color: Colors.black),
                          children: [
                            new TextSpan(
                              text: "That’s about it. ",
                            ),
                            new TextSpan(
                              text: "Here is a link to our website ",
                              recognizer: TapGestureRecognizer()
                                ..onTap = _launchURL,
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            new TextSpan(
                              text:
                                  "with the full copy of all of the legalese.",
                            )
                          ]),
                    )),
              ],
            )),
        endDrawer: NavDrawer(context));
  }
}

_launchURL() async {
  const url = 'https://infinite.industries/legal';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
