// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ForecastState on ForecastBase, Store {
  Computed<Forecast?>? _$currentComputed;

  @override
  Forecast? get current =>
      (_$currentComputed ??= Computed<Forecast?>(() => super.current,
              name: 'ForecastBase.current'))
          .value;

  final _$forecastAtom = Atom(name: 'ForecastBase.forecast');

  @override
  List<Forecast> get forecast {
    _$forecastAtom.reportRead();
    return super.forecast;
  }

  @override
  set forecast(List<Forecast> value) {
    _$forecastAtom.reportWrite(value, super.forecast, () {
      super.forecast = value;
    });
  }

  final _$currentForecastAtom = Atom(name: 'ForecastBase.currentForecast');

  @override
  int get currentForecast {
    _$currentForecastAtom.reportRead();
    return super.currentForecast;
  }

  @override
  set currentForecast(int value) {
    _$currentForecastAtom.reportWrite(value, super.currentForecast, () {
      super.currentForecast = value;
    });
  }

  final _$ForecastBaseActionController = ActionController(name: 'ForecastBase');

  @override
  void set(List<Forecast> forecastData) {
    final _$actionInfo =
        _$ForecastBaseActionController.startAction(name: 'ForecastBase.set');
    try {
      return super.set(forecastData);
    } finally {
      _$ForecastBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrent(int index) {
    final _$actionInfo = _$ForecastBaseActionController.startAction(
        name: 'ForecastBase.setCurrent');
    try {
      return super.setCurrent(index);
    } finally {
      _$ForecastBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo =
        _$ForecastBaseActionController.startAction(name: 'ForecastBase.clear');
    try {
      return super.clear();
    } finally {
      _$ForecastBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
forecast: ${forecast},
currentForecast: ${currentForecast},
current: ${current}
    ''';
  }
}
