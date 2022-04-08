// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DialogState on DialogBase, Store {
  final _$dialogDataAtom = Atom(name: 'DialogBase.dialogData');

  @override
  DialogData? get dialogData {
    _$dialogDataAtom.reportRead();
    return super.dialogData;
  }

  @override
  set dialogData(DialogData? value) {
    _$dialogDataAtom.reportWrite(value, super.dialogData, () {
      super.dialogData = value;
    });
  }

  final _$DialogBaseActionController = ActionController(name: 'DialogBase');

  @override
  void set(DialogData data) {
    final _$actionInfo =
        _$DialogBaseActionController.startAction(name: 'DialogBase.set');
    try {
      return super.set(data);
    } finally {
      _$DialogBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo =
        _$DialogBaseActionController.startAction(name: 'DialogBase.clear');
    try {
      return super.clear();
    } finally {
      _$DialogBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dialogData: ${dialogData}
    ''';
  }
}
