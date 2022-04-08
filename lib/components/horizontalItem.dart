import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/state/citiesList.dart';
import 'package:weather_app/state/forecast.dart';

import '../helpers.dart';
import '../models/forecast.dart';
import '../services/api.dart';
import '../state/city.dart';
import '../state/config.dart';

class HorizontalItem extends StatelessWidget {
  const HorizontalItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) => Observer(builder: (_) {
        Forecast forecast = forecastState.forecast[index];
        void onTap() {
          forecastUpdate().then((value) => forecastState.setCurrent(index));
        }

        return Container(
          width: 93.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade50),
              elevation: MaterialStateProperty.all(0),
              foregroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: onTap,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(DateFormat('EE').format(DateTime.parse(forecast.applicable_date))),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 7.0),
                  child: Image.network(
                    '$baseUrl/static/img/weather/png/${forecast.weather_state_abbr}.png',
                    width: 240.0,
                  ),
                ),
                Text(
                  '${tempConverter(temp: forecast.min_temp, tempTypeIsFahrenheit: configState.tempTypeIsFahrenheit, mini: true)} / ${tempConverter(temp: forecast.max_temp, tempTypeIsFahrenheit: configState.tempTypeIsFahrenheit, mini: true)}',
                  style: const TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        );
      });
}
