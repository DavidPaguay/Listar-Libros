import 'package:listar/app/data/model/abstract_model.dart';

class Celular extends AbstractModel<String> {
  Celular({
    id,
    this.nombre,
    this.marca,
    this.precio,
  }) : super(id);

  String? nombre;
  String? marca;
  String? precio;

  factory Celular.fromJson(Map<String, dynamic> json) => Celular(
        id: json["id"],
        nombre: json["nombre"],
        marca: json["marca"],
        precio: json["precio"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "marca": marca,
        "precio": precio,
      };
}
