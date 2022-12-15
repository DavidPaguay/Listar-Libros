import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listar/app/data/services/remote/listar_api.dart';
import 'package:listar/app/routes/app_pages.dart';
import 'package:listar/app/routes/app_routes.dart';

void main() async {
  ListarApi.configureDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Tienda de Celulares Ramon el Dragon",
      defaultTransition: Transition.fadeIn,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.LISTAR,
    );
  }
}
