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

  loadLibros() async {
    Libro l = Libro(
        id: 1,
        nombre: "Mi patito",
        autor: Autor(
            id: 1,
            nombre: "David",
            cedula: "0350005310",
            edad: 24,
            titulo: "ING"),
        numeroPaginas: 224);

    Libro l2 = Libro(
        id: 2,
        nombre: "Mi patito 2",
        autor: Autor(
            id: 2,
            nombre: "David",
            cedula: "0350005310",
            edad: 24,
            titulo: "ING"),
        numeroPaginas: 224);

    Libro l3 = Libro(
        id: 3,
        nombre: "Mi patito 3",
        autor: Autor(
            id: 3,
            nombre: "David",
            cedula: "0350005310",
            edad: 24,
            titulo: "ING"),
        numeroPaginas: 224);

    Libro l4 = Libro(
        id: 4,
        nombre: "Mi patito",
        autor: Autor(
            id: 4,
            nombre: "David",
            cedula: "0350005310",
            edad: 24,
            titulo: "ING"),
        numeroPaginas: 224);

    libros.add(l);
    libros.add(l2);
    libros.add(l3);
    libros.add(l4);

    await ListarApi().getHttp();
  }
}
