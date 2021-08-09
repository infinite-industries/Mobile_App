import 'package:flutter/material.dart';
import 'package:infinite_mobile_app/models/event.dart';
import 'package:intl/intl.dart';

class EventDayDisplay extends StatelessWidget {
  final EventTime eventTime;
  final String format;
  final TextStyle? style;

  EventDayDisplay({
    Key? key,
    required this.eventTime,
    this.format = 'EEEE, MMMM d',
    this.style
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? startTime = eventTime.startTime;
    String content = "Invalid date";
    if (startTime != null) {
      DateTime? startDt = DateTime.tryParse(startTime)?.toLocal();
      if (startDt != null) {
        content = DateFormat(format).format(startDt);
      }
    }
    return Text(content, style: style);
  }
}
