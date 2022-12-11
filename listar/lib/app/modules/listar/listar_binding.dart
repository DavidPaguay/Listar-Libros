import 'package:get/get.dart';
import 'package:listar/app/modules/listar/listar_controller.dart';

class ListarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListarController>(() => ListarController());
    
  }
}
