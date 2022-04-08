import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_app/services/forecast.dart';
import 'package:weather_app/state/city.dart';
import 'package:weather_app/state/forecast.dart';
import 'models/forecast.dart';

String tempConverter({required double temp, required bool tempTypeIsFahrenheit, bool mini = false}) {
  if (temp == null) return '--';
  return tempTypeIsFahrenheit
      ? '${temp.roundToDouble() + 32}${mini ? '' : '°F'}'
      : '${temp.roundToDouble()}${mini ? '' : '°С'}';
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}

Future<void> forecastUpdate({bool? pull = false}) async {
  int woeid = cityState.current!.woeid;
  List<Forecast> _forecast = await ForecastApi().getForecastService(woeid: woeid, pull: pull);
  forecastState.set(_forecast);
}