import 'package:mobx/mobx.dart';

import '../models/dialog.dart';

part 'dialog.g.dart';

final DialogState dialogState = DialogState();

class DialogState = DialogBase with _$DialogState;

abstract class DialogBase with Store {
  @observable
  DialogData? dialogData;

  @action
  void set(DialogData data) {
    dialogData = data;
  }

  @action
  void clear() {
    dialogData = null;
  }
}
