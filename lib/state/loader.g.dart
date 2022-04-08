// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loader.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoaderState on LoaderBase, Store {
  final _$isLoadingAtom = Atom(name: 'LoaderBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$LoaderBaseActionController = ActionController(name: 'LoaderBase');

  @override
  void on() {
    final _$actionInfo =
        _$LoaderBaseActionController.startAction(name: 'LoaderBase.on');
    try {
      return super.on();
    } finally {
      _$LoaderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void off() {
    final _$actionInfo =
        _$LoaderBaseActionController.startAction(name: 'LoaderBase.off');
    try {
      return super.off();
    } finally {
      _$LoaderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
