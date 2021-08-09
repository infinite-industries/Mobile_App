import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextLink extends StatelessWidget {
  final String url;
  final String? text;
  final TextStyle? style;

  TextLink({
    Key? key,
    required this.url,
    this.text,
    this.style
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        text != null ? text! : url,
        style: style != null ? style! : TextStyle(color: Colors.blueAccent, fontSize: 16.0)
      ),
      onTap: () {
        _launchURL(url);
      }
    );
  }
}

_launchURL(String url) async {
  print("try opening" + url);
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
