import 'package:mobx/mobx.dart';

import '../models/city.dart';

part 'citiesList.g.dart';

final CitiesListState citiesListState = CitiesListState();

class CitiesListState = CitiesListBase with _$CitiesListState;

abstract class CitiesListBase with Store {

  @observable
  List<City> citiesList = [];

  @action
  void set(List<City> cities) {
    citiesList = cities;
  }

  @action
  void clear() {
    citiesList = [];
  }
}
