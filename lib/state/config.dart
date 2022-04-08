import 'package:mobx/mobx.dart';

part 'config.g.dart';

final ConfigState configState = ConfigState();

class ConfigState = ConfigBase with _$ConfigState;

abstract class ConfigBase with Store {

  @observable
  bool tempTypeIsFahrenheit = false;

  @action
  void switchTempType(bool value) {
    tempTypeIsFahrenheit = value;
  }
}
