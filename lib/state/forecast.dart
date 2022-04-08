import 'package:mobx/mobx.dart';
import 'package:weather_app/models/forecast.dart';

part 'forecast.g.dart';

final ForecastState forecastState = ForecastState();

class ForecastState = ForecastBase with _$ForecastState;

abstract class ForecastBase with Store {
  @observable
  List<Forecast> forecast = [];

  @observable
  int currentForecast = 0;

  @computed
  Forecast? get current => forecast.isEmpty ? null : forecast[currentForecast];

  @action
  void set(List<Forecast> forecastData) {
    forecast = forecastData;
  }

  @action
  void setCurrent(int index) {
    currentForecast = index;
  }

  @action
  void clear() {
    forecast = [];
  }
}
