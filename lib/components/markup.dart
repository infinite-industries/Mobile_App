import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:infinite_mobile_app/theme.dart';

Map<String,Style> defaultStyle = {
  "p": Style(
    fontFamily: SECONDARY_FONT,
    fontSize: FontSize(BODY_FONT_SIZE),
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.all(0)
  ),
  "ul,ol": Style(
    fontFamily: SECONDARY_FONT,
    fontSize: FontSize(BODY_FONT_SIZE),
    margin: EdgeInsets.all(16.0,),
    padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0)
  )
};

class Markup extends StatelessWidget {
  final String content;
  final Map<String,Style>? style;

  Markup({
    Key? key,
    required this.content,
    this.style
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String data = content.split('<p><br></p>').toSet().join(' ');
    return Html(
      data: data,
      style: style != null ? style! : defaultStyle,
      onLinkTap: (url, renderContext, map, element) {
        _launchURL(url);
      }
    );
  }
}

_launchURL(url) async {
  print("try opening" + url);
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
