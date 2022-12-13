import 'package:get/get.dart';
import 'package:listar/app/data/model/autor.dart';
import 'package:listar/app/data/model/libro.dart';
import 'package:listar/app/data/services/remote/listar_Api.dart';

class ListarController extends GetxController {
  RxList<Libro> libros = <Libro>[].obs;
  RxBool isLoad = false.obs;

  getAllBooks() async {
    libros.value = (await ListarApi().getList())!;
    libros.isEmpty ? isLoad.value = true : isLoad.value = false;
  }


}
