// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CityState on CityBase, Store {
  final _$currentAtom = Atom(name: 'CityBase.current');

  @override
  City? get current {
    _$currentAtom.reportRead();
    return super.current;
  }

  @override
  set current(City? value) {
    _$currentAtom.reportWrite(value, super.current, () {
      super.current = value;
    });
  }

  final _$CityBaseActionController = ActionController(name: 'CityBase');

  @override
  void set(City city) {
    final _$actionInfo =
        _$CityBaseActionController.startAction(name: 'CityBase.set');
    try {
      return super.set(city);
    } finally {
      _$CityBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo =
        _$CityBaseActionController.startAction(name: 'CityBase.clear');
    try {
      return super.clear();
    } finally {
      _$CityBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
current: ${current}
    ''';
  }
}
