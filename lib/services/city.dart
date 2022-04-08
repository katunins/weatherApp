import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/models/city.dart';

import 'api.dart';

class CityApi {
  Future<List<City>> getCitiesListService(Position position) async {
    try {
      String url =
          'location/search/?lattlong=${position.latitude.toString()},${position.longitude.toString()}';
      Response<List<dynamic>> response = await Api().dio.get(url);
      List<City> citiesList = response.data!.map((item) => City.fromJson(item)).toList();
      return citiesList;
    } catch (e) {
      print('error CityApi');
      print(e);
    }
    return [];
  }
}