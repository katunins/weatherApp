import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_app/helpers.dart';
import 'package:weather_app/state/city.dart';

import '../models/city.dart';

class CityItem extends StatelessWidget {
  const CityItem({Key? key, required this.city}) : super(key: key);
  final City city;

  @override
  Widget build(BuildContext context) => Observer(builder: (_) {
        {
          bool isChecked = city.woeid == cityState.current?.woeid;
          return Row(children: [
            Checkbox(
              checkColor: Colors.white,
              // fillColor: MaterialStateProperty.resolveWith(getColor),
              value: isChecked,
              onChanged: (bool? value) {
                if (!isChecked) {
                  cityState.set(city);
                  forecastUpdate();
                  Navigator.of(context).pop();
                }
              },
            ),
            Text(city.title)
          ]);
        }
      });
}
