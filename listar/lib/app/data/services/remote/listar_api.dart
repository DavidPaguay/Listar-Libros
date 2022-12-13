import 'package:dio/dio.dart';
import 'package:listar/app/data/model/libro.dart';

class ListarApi {
  static Dio dio = Dio();

  static void configureDio() {
    //base de url desarrollo
    //dio.options.baseUrl = 'http://localhost:8080/api';
    //base url Aprodución
    dio.options.baseUrl = 'http://192.168.1.27:8080/demoapp/rs';
    //Configurar headers
    dio.options.headers = {
      // 'x-token': ' Aqui va el token',
      // 'Content-Type': 'multipart/form-data'
    };
  }

  Future<List<Libro>?> getList() async {
    var result;
    try {
      result = await dio.get(
        '/libros',
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
    print(result);
    return (result as List)
        .map((e) => Libro.fromJson(e))
        .toList()
        .cast<Libro>();
  }

  Future getHttp() async {
    try {
      print("Entre");
      var response = await Dio().get('');
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
