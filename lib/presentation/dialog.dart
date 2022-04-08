import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/button.dart';
import 'package:weather_app/models/dialog.dart';
import 'package:weather_app/state/dialog.dart';

class DialogWindow extends StatelessWidget {
  DialogWindow({Key? key, required this.dialogData}) : super(key: key);
  final DialogData? dialogData;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        color: Colors.blueGrey.withOpacity(0.7),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(24.0),
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dialogData!.title,
                  style: const TextStyle(fontSize: 18.0),
                ),
                Text(
                  dialogData!.message,
                  style: const TextStyle(fontSize: 14.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: dialogData!.buttons
                          .map((item) => Container(
                                margin: const EdgeInsets.only(left: 10.0),
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (item.onPress != null) item.onPress!();
                                      dialogState.clear();
                                    },
                                    child: Text(item.caption)),
                              ))
                          .toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
