class City {
  late int distance;
  late String title;
  late String locationType;
  late int woeid;
  late String lattLong;

  City(
      {required this.distance,
      required this.title,
      required this.locationType,
      required this.woeid,
      required this.lattLong}) {}

  City.fromJson(Map<String, dynamic> json) {
    distance = json['distance'];
    title = json['title'];
    locationType = json['location_type'];
    woeid = json['woeid'];
    lattLong = json['latt_long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['distance'] = this.distance;
    data['title'] = this.title;
    data['location_type'] = this.locationType;
    data['woeid'] = this.woeid;
    data['latt_long'] = this.lattLong;
    return data;
  }
}
