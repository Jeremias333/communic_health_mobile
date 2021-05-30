import 'dart:collection';

import 'package:dio/dio.dart';

class Api {
  final dio = Dio();
  final host = "http://grupom.sagittax.org";

  _all() async {
    var hostTemp = host + "/get/all";
    Response response = await dio.get(hostTemp);
    var map = HashMap.from(response.data);

    return map;
  }

  getAll() async {
    var map = await _all();
    var listaComents = map['lista_coments'];
    var localizacao = map['nota_avaliacao'];
    var nomes = map['nomes'];
    var indices = map['indices'];
    var notaAvaliacao = map['localizacao'];

    var lista = [listaComents, localizacao, nomes, indices, notaAvaliacao];
    return lista;
  }

  _idName() async {
    var hostTemp = host + "/get/all";
    Response response = await dio.get(hostTemp);
    var map = HashMap.from(response.data);

    return map;
  }

  getIdName() async {
    var map = await _idName();

    var nomes = map['nomes'];
    var indices = map['indices'];
    var lista = [nomes, indices];

    return lista;
  }
}
