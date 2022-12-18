import 'package:dio/dio.dart';
import 'package:listar/app/data/model/celular.dart';

class ListarApi {
  static Dio dio = Dio();

  static void configureDio() {
    dio.options.baseUrl = 'http://192.168.1.27:8080/demoapp/rs';
  }

  Future<List<Celular>?> getList() async {
    var result;
    try {
      result = await dio.get(
        '/celulares',
      );
    } on DioError catch (e) {
      print(e);
    }
    print(result);
    return (result.data as List)
        .map((e) => Celular.fromJson(e))
        .toList()
        .cast<Celular>();
  }

  Future setCelular(Celular celular) async {
    var result;
    try {
      result = await dio.post('/guardar', data: {celular.toJson()});
    } on DioError catch (e) {
      print(e);
    }
    return result;
  }
}
