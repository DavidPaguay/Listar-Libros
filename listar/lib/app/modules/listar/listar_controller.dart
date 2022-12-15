import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:listar/app/data/model/celular.dart';
import 'package:listar/app/data/services/remote/listar_Api.dart';

class ListarController extends GetxController {
  RxList<Celular> celulares = <Celular>[].obs;
  Rx<Celular> celular = Celular().obs;
  RxBool isLoad = false.obs;
  var formKey = GlobalKey<FormState>();

  getAllBooks() async {
    celulares.value = (await ListarApi().getList())!;
    celulares.isEmpty ? isLoad.value = true : isLoad.value = false;
  }
}
