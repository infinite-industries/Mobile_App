class Venue {
  String id;
  String name;
  String address;
  String gMapLink;

  Venue({
    this.id,
    this.name,
    this.address,
    this.gMapLink
  });

  factory Venue.fromMap(Map<String, dynamic> data) {
    return Venue(
      id: data['id'],
      name: data['name'],
      address: data['address'],
      gMapLink: data['g_map_link']
    );
  } 
}
