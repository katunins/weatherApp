import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_app/components/horizontalItem.dart';
import 'package:weather_app/state/forecast.dart';
import '../helpers.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => SizedBox(
          height: 130.0,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: forecastState.forecast.mapIndexed((item, index) => HorizontalItem(index: index)).toList(),
          )),
    );
  }
}
