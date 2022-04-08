// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citiesList.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CitiesListState on CitiesListBase, Store {
  final _$citiesListAtom = Atom(name: 'CitiesListBase.citiesList');

  @override
  List<City> get citiesList {
    _$citiesListAtom.reportRead();
    return super.citiesList;
  }

  @override
  set citiesList(List<City> value) {
    _$citiesListAtom.reportWrite(value, super.citiesList, () {
      super.citiesList = value;
    });
  }

  final _$CitiesListBaseActionController =
      ActionController(name: 'CitiesListBase');

  @override
  void set(List<City> cities) {
    final _$actionInfo = _$CitiesListBaseActionController.startAction(
        name: 'CitiesListBase.set');
    try {
      return super.set(cities);
    } finally {
      _$CitiesListBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$CitiesListBaseActionController.startAction(
        name: 'CitiesListBase.clear');
    try {
      return super.clear();
    } finally {
      _$CitiesListBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
citiesList: ${citiesList}
    ''';
  }
}
