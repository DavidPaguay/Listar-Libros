import 'package:get/route_manager.dart';
import 'package:listar/app/modules/listar/listar_binding.dart';
import 'package:listar/app/modules/listar/listar_page.dart';
import 'package:listar/app/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.LISTAR,
      page: () => const ListarPage(),
      binding: ListarBinding(),
    )
  ];
}
