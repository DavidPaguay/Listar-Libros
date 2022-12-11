import 'package:listar/app/data/model/abstract_model.dart';

class Autor extends AbstractModel<int> {
  Autor({
    id,
    this.nombre,
    this.titulo,
    this.cedula,
    this.edad,
  }) : super(id);

  String? nombre;
  String? titulo;
  String? cedula;
  int? edad;

  factory Autor.fromJson(Map<String, dynamic> json) => Autor(
        id: json["id"],
        nombre: json["nombre"],
        titulo: json["titulo"],
        cedula: json["cedula"],
        edad: json["edad"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "fecha_hora": titulo,
        "cedula": cedula,
        "nombre": nombre,
        "persona_id": edad,
      };


}
