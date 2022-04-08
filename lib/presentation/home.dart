import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_app/components/loader.dart';
import 'package:weather_app/components/title.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/presentation/dialog.dart';
import 'package:weather_app/presentation/drawer.dart';
import 'package:weather_app/presentation/weather.dart';
import 'package:weather_app/services/forecast.dart';
import 'package:weather_app/services/userLocation.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/state/citiesList.dart';
import 'package:weather_app/state/city.dart';
import 'package:weather_app/state/dialog.dart';
import 'package:weather_app/state/forecast.dart';

import '../services/city.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final getIt = GetIt.instance;

  Future<void> init() async {
    Position _determinePosition = await determinePosition();
    List<City> citiesList = await CityApi().getCitiesListService(_determinePosition);
    citiesListState.set(citiesList);
    cityState.set(citiesList.first);
    int _woeid = citiesList.first.woeid;
    List<Forecast> _forecast = await ForecastApi().getForecastService(woeid: _woeid);
    forecastState.set(_forecast);
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const TitleWidget(),
          ),
          body: Observer(
              builder: (_) => Stack(
                    children: [
                      WeatherScreen(),
                      if (dialogState.dialogData != null) DialogWindow(dialogData: dialogState.dialogData)
                    ],
                  )),
          drawer: const DrawerComponent(),
        ),
      );
}
