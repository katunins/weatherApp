import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_app/state/loader.dart';

import '../helpers.dart';
import '../models/forecast.dart';
import '../services/api.dart';
import '../state/config.dart';

class WeatherBlock extends StatelessWidget {
  const WeatherBlock({Key? key, this.forecast}) : super(key: key);
  final Forecast? forecast;

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Stack(
              fit: StackFit.expand,
              children: [
                if (forecast != null)
                  Center(child: RefreshIndicator(
                      onRefresh: ()=>forecastUpdate(pull: true),
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                forecast!.weather_state_name,
                                style: const TextStyle(fontSize: 20.0),
                              ),
                            ),
                            Image.network(
                              '$baseUrl/static/img/weather/png/${forecast!.weather_state_abbr}.png',
                              width: 180.0,
                            ),
                            Text(
                              tempConverter(
                                  temp: forecast!.the_temp,
                                  tempTypeIsFahrenheit: configState.tempTypeIsFahrenheit),
                              style: const TextStyle(fontSize: 50.0),
                            ),
                            Text(
                              '${tempConverter(temp: forecast!.min_temp, tempTypeIsFahrenheit: configState.tempTypeIsFahrenheit)} / ${tempConverter(temp: forecast!.max_temp, tempTypeIsFahrenheit: configState.tempTypeIsFahrenheit)}',
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 20.0),
                              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue.shade50,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Humidity: ${forecast!.humidity}%'),
                                  Text('Pressure: ${forecast!.air_pressure} hPa'),
                                  Text('Wind: ${forecast!.wind_speed.roundToDouble()} km/h'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),),
                if (loaderState.isLoading)
                  Container(
                    color: Colors.white.withOpacity(0.7),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
              ],
            ));
  }
}
