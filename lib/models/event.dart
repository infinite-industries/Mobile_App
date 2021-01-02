class Event {
  String title;

  Event({this.title});

  factory Event.fromMap(Map<String, dynamic> data) {
    return Event(title: data['title']);
  }
}
