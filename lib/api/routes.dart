import 'dart:collection';

import 'package:dio/dio.dart';

class Api {
  final dio = Dio();
  final host = "http://grupom.sagittax.org";

  getAll() async {
    var hostTemp = host + "/get/all";
    Response response = await dio.get(hostTemp);
    var map = HashMap.from(response.data);

    var listaComents = map['lista_coments'];
    var localizacao = map['nota_avaliacao'];
    var nomes = map['nomes'];
    var indices = map['indices'];
    var notaAvaliacao = map['localizacao'];

    var lista = [listaComents, localizacao, nomes, indices, notaAvaliacao];
    return lista;
  }
}
