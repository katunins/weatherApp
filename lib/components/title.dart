import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/state/forecast.dart';
import 'package:weather_app/state/loader.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Text(loaderState.isLoading || forecastState.current == null
            ? 'Загрузка ...'
            : DateFormat('d MMMM yyyy, EEEE').format(
                DateTime.parse(forecastState.current!.applicable_date))));
  }
}
