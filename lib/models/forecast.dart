import 'dart:developer';

class Forecast {
  late String weather_state_name;
  late String weather_state_abbr;
  late double wind_speed;
  late String wind_direction_compass;
  late double air_pressure;
  late int humidity;
  late double min_temp;
  late double max_temp;
  late double the_temp;
  late String applicable_date;

  Forecast({
    required this.weather_state_name,
    required this.weather_state_abbr,
    required this.wind_speed,
    required this.wind_direction_compass,
    required this.air_pressure,
    required this.humidity,
    required this.min_temp,
    required this.max_temp,
    required this.the_temp,
    required this.applicable_date
  }) {}

  Forecast.fromJson(Map<String, dynamic> json) {
    weather_state_name = json['weather_state_name'];
    weather_state_abbr = json['weather_state_abbr'];
    wind_speed = json['wind_speed'];
    wind_direction_compass = json['wind_direction_compass'];
    air_pressure = json['air_pressure'];
    humidity = json['humidity'];
    the_temp = json['the_temp'];
    min_temp = json['min_temp'];
    max_temp = json['max_temp'];
    applicable_date = json['applicable_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['weather_state_name'] = this.weather_state_name;
    data['weather_state_abbr'] = this.weather_state_abbr;
    data['wind_speed'] = this.wind_speed;
    data['wind_direction_compass'] = this.wind_direction_compass;
    data['air_pressure'] = this.air_pressure;
    data['humidity'] = this.humidity;
    data['the_temp'] = this.the_temp;
    data['min_temp'] = this.min_temp;
    data['max_temp'] = this.max_temp;
    data['applicable_date'] = this.applicable_date;
    return data;
  }
}
