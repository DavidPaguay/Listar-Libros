import 'package:dio/dio.dart';
import 'package:listar/app/data/model/libro.dart';

class ListarApi {
  static Dio dio = Dio();

  static void configureDio() {
    //base de url desarrollo
    //dio.options.baseUrl = 'http://localhost:8080/api';
    //base url Aprodución
    dio.options.baseUrl = 'https://difusionvi.ups.edu.ec/fastapi';
    //Configurar headers
    dio.options.headers = {
      // 'x-token': ' Aqui va el token',
      // 'Content-Type': 'multipart/form-data'
    };
  }

  Future<List<Libro>?> getList() async {
    var result;
    try {
      result = await dio.post(
        '/upload',
      );
    } on DioError catch (e) {
      if (e.response!.statusCode == 400) {
        if (e.response!.data['errors'] != null) {
          throw (e.response!.data['errors'][0]['msg']);
        } else {
          throw (e.response!.data['msg']);
        }
      } else {
        throw ('Error en el Upload Image');
      }
    }
    return (result['data']['libro'] as List)
        .map((e) => Libro.fromJson(e))
        .toList()
        .cast<Libro>();
  }
}
