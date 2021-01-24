import 'package:infinite_mobile_app/models/venue.dart';

class Event {
  String id;
  String title;
  String briefDescription;
  String description;
  String image;
  String socialImage;
  List<DateTime> dateTimes;
  Venue venue;
  String admissionFee;
  String websiteLink;
  String ticketLink;
  String fbEventLink;
  String eventbriteLink;
  String bitlyLink;
  List<String> tags;

  Event({
    this.id,
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
    this.tags
  });

  factory Event.fromMap(Map<String, dynamic> data) {
    List rawDateTimes = data['date_times'] ?? [];
    return Event(
      id: data['id'],
      title: data['title'],
      briefDescription: data['brief_description'],
      description: data['description'],
      image: data['image'],
      socialImage: data['social_image'],
      dateTimes: rawDateTimes.map((dateTime) => DateTime.fromMap(dateTime)).toList(),
      venue: data['venue'] != null ? Venue.fromMap(data['venue']) : null,
      admissionFee: data['admission_fee'],
      websiteLink: data['website_link'],
      ticketLink: data['ticket_link'],
      fbEventLink: data['fb_event_link'],
      eventbriteLink: data['eventbrite_link'],
      bitlyLink: data['bitly_link'],
      tags: new List<String>.from(data['tags'])
    );
  }
}

class DateTime {
  String startTime;
  String endTime;

  DateTime({
    this.startTime,
    this.endTime
  });

  factory DateTime.fromMap(Map<String, dynamic> data) {
    return DateTime(
      startTime: data['start_time'],
      endTime: data['end_time']
    );
  }
}
