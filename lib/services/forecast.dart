import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/state/loader.dart';

import 'api.dart';

class ForecastApi {
  Future<List<Forecast>> getForecastService({required int woeid, bool? pull = false}) async {
    if (pull == false) loaderState.on();
    try {
      String url = 'location/${woeid.toString()}';
      Response<Map<String, dynamic>> response = await Api().dio.get(url);
      List<dynamic> result = response.data!['consolidated_weather'];
      List<Forecast> forecast =
          result.map((item) => Forecast.fromJson(item)).toList();

      loaderState.off();
      return forecast;
    } catch (e) {
      print('error getForecastService');
      print(e);
      loaderState.off();
      return [];
    }
  }
}
