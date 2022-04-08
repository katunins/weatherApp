import 'package:mobx/mobx.dart';

import '../models/city.dart';

part 'city.g.dart';

final CityState cityState = CityState();

class CityState = CityBase with _$CityState;

abstract class CityBase with Store {

  @observable
  City? current;

  @action
  void set(City city) {
    current = city;
  }

  @action
  void clear() {
    current = null;
  }
}
