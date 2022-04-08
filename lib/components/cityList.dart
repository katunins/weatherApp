import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../state/citiesList.dart';
import 'cityItem.dart';

class CitiesList extends StatelessWidget {
  const CitiesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Observer(
      builder: (_) => SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: citiesListState.citiesList.map((item) => CityItem(city: item)).toList(),
                )
              ],
            ),
          ));
}
