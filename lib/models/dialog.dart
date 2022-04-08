import 'button.dart';

class DialogData {
  late String title;
  late String message;
  late List<Button> buttons;

  DialogData({required this.title, required this.message, required this.buttons});
}