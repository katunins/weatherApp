// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigState on ConfigBase, Store {
  final _$tempTypeIsFahrenheitAtom =
      Atom(name: 'ConfigBase.tempTypeIsFahrenheit');

  @override
  bool get tempTypeIsFahrenheit {
    _$tempTypeIsFahrenheitAtom.reportRead();
    return super.tempTypeIsFahrenheit;
  }

  @override
  set tempTypeIsFahrenheit(bool value) {
    _$tempTypeIsFahrenheitAtom.reportWrite(value, super.tempTypeIsFahrenheit,
        () {
      super.tempTypeIsFahrenheit = value;
    });
  }

  final _$ConfigBaseActionController = ActionController(name: 'ConfigBase');

  @override
  void switchTempType(bool value) {
    final _$actionInfo = _$ConfigBaseActionController.startAction(
        name: 'ConfigBase.switchTempType');
    try {
      return super.switchTempType(value);
    } finally {
      _$ConfigBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tempTypeIsFahrenheit: ${tempTypeIsFahrenheit}
    ''';
  }
}
