import 'package:mobx/mobx.dart';

part 'loader.g.dart';

final LoaderState loaderState = LoaderState();

class LoaderState = LoaderBase with _$LoaderState;

abstract class LoaderBase with Store {

  @observable
  bool isLoading = false;

  @action
  void on() {
    isLoading = true;
  }

  @action
  void off() {
    isLoading = false;
  }
}
