import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_app/components/horizontalList.dart';
import 'package:weather_app/components/weather.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/services/api.dart';
import 'package:weather_app/state/config.dart';
import 'package:weather_app/state/forecast.dart';
import 'package:weather_app/state/loader.dart';

import '../helpers.dart';

class WeatherScreen extends StatelessWidget {
  WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Observer(builder: (_) {
        Forecast? forecast = forecastState.current;

        return SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: WeatherBlock(forecast: forecast)),
              Column(
                children: const [
                  Divider(),
                  HorizontalList(),
                  SizedBox(
                    height: 10.0,
                  )
                ],
              )
            ],
          ),
        );
      });
//   },
// );
}
