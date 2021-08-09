import 'package:flutter/material.dart';
import 'package:infinite_mobile_app/models/event.dart';
import 'package:intl/intl.dart';

class EventTimeDisplay extends StatelessWidget {
  final EventTime eventTime;
  final String? format;
  final TextStyle? style;

  EventTimeDisplay({
    Key? key,
    required this.eventTime,
    this.format = 'h:mm a',
    this.style
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? startTime = eventTime.startTime;
    String? endTime = eventTime.endTime;
    String content = "Invalid time";
    if (startTime != null) {
      DateTime? startDt = DateTime.tryParse(startTime)?.toLocal();
      if (startDt != null) {
        content = DateFormat(format).format(startDt);
      }
    }
    if (endTime != null) {
      DateTime? endDt = DateTime.tryParse(endTime)?.toLocal();
      if (endDt != null) {
        content += ' - ' + DateFormat(format).format(endDt);
      }
    }
    return Text(content, style: style);
  }
}
