import 'package:dio/dio.dart';
import 'package:weather_app/models/button.dart';
import 'package:weather_app/models/dialog.dart';
import 'package:weather_app/state/dialog.dart';

const baseUrl = 'https://www.metaweather.com';

class Api {
  final dio = createDio();

  Api._internal();

  static final _singleton = Api._internal();

  factory Api() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: '$baseUrl/api/',
      receiveTimeout: 15000,
      // 15 seconds
      connectTimeout: 15000,
      sendTimeout: 15000,
      headers: {
        'version': '1.0',
      },
    ));

    dio.interceptors.add(InterceptorsWrapper(onError: (DioError error, handler) {
      dialogState.set(DialogData(
          title: 'Ошибка',
          message: 'Ошибка загрузки данных с сервера. Повторите запрос',
          buttons: [
            Button(
                caption: 'Повторить',
                onPress: () {
                  // return dio.request(error.requestOptions.path, options: error.requestOptions);
                  return dio.fetch(error.requestOptions);
                }),
            Button(
                caption: 'Отменить',
                onPress: () {
                  return handler.next(error);
                })
          ]));
      ; //continue
    }));
    return dio;
  }
}
