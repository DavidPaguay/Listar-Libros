import 'package:get/get.dart';
import 'package:listar/app/modules/crear/crear_controller.dart';
import 'package:listar/app/modules/listar/listar_controller.dart';

class CrearBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CrearController>(() => CrearController());
  }
}
