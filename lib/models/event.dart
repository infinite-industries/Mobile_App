import 'package:infinite_mobile_app/models/venue.dart';

class Event {
  String? id;
  String? title;
  String? briefDescription;
  String? description;
  String? image;
  String? socialImage;
  List<EventTime>? dateTimes;
  Venue? venue;
  String? admissionFee;
  String? websiteLink;
  String? ticketLink;
  String? fbEventLink;
  String? eventbriteLink;
  String? bitlyLink;
  List<String>? tags;

  Event(
      {this.id,
      this.title,
      this.briefDescription,
      this.description,
      this.image,
      this.socialImage,
      this.dateTimes,
      this.venue,
      this.admissionFee,
      this.websiteLink,
      this.ticketLink,
      this.fbEventLink,
      this.eventbriteLink,
      this.bitlyLink,
      this.tags});

  factory Event.fromMap(Map<String, dynamic> data) {
    List rawDateTimes = data['date_times'] ?? [];
    return Event(
        id: data['id'],
        title: data['title'],
        briefDescription: data['brief_description'],
        description: data['description'],
        image: data['image'],
        socialImage: data['social_image'],
        dateTimes: rawDateTimes
            .map((dateTime) => EventTime.fromMap(dateTime))
            .toList(),
        venue: data['venue'] != null ? Venue.fromMap(data['venue']) : null,
        admissionFee: data['admission_fee'],
        websiteLink: data['website_link'],
        ticketLink: data['ticket_link'],
        fbEventLink: data['fb_event_link'],
        eventbriteLink: data['eventbrite_link'],
        bitlyLink: data['bitly_link'],
        tags: new List<String>.from(data['tags']));
  }
}

class EventTime {
  String? startTime;
  String? endTime;

  EventTime({this.startTime, this.endTime});

  factory EventTime.fromMap(Map<String, dynamic> data) {
    return EventTime(startTime: data['start_time'], endTime: data['end_time']);
  }
}

// class EventWithFormattedDate {
//   Event incoming_event;
//   String event_date_and_day;
//   String event_times;

//   EventWithFormattedDate(
//       this.incoming_event, this.event_date_and_day, this.event_times);
// }
