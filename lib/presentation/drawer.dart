import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_app/components/cityItem.dart';
import 'package:weather_app/components/cityList.dart';
import 'package:weather_app/state/citiesList.dart';
import 'package:weather_app/state/config.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Drawer(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: const Text('The Weather 1.0', style: TextStyle(fontSize: 23.0),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('switch celsius to fahrenheit?'),
                        Switch(
                            value: configState.tempTypeIsFahrenheit,
                            onChanged: configState.switchTempType),
                      ],
                    ),
                    const Divider(height: 50.0,),
                    const Text(
                      'Select nearest city:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20.0,),
                    const Expanded(child: CitiesList(),),
                    const SizedBox(height: 20.0,),
                  ],
                ),
              ),
            ));
  }
}
