import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../state/loader.dart';

class LoaderWidget extends StatelessWidget {
  LoaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => loaderState.isLoading
            ? Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: const Center(
                  child: SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 3.0,
                    ),
                  ),
                ),
              )
            : Container());
  }
}
