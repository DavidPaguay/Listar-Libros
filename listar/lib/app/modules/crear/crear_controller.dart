import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:listar/app/data/model/celular.dart';
import 'package:listar/app/data/services/remote/listar_api.dart';

class CrearController extends GetxController {
  RxList<Celular> celulares = <Celular>[].obs;
  Rx<Celular> celular = Celular().obs;
  RxBool isLoad = false.obs;
  var formKey = GlobalKey<FormState>();

  getAllBooks() async {
    celulares.value = (await ListarApi().getList())!;
    celulares.isEmpty ? isLoad.value = true : isLoad.value = false;
  }

  guardarCelular() async {
    print(celular.toJson());
    var res = await ListarApi().setCelular(celular.value);
  }
}
