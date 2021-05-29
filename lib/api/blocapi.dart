import 'package:communic_health_mobile/api/routes.dart';
import 'package:rxdart/subjects.dart';

class BlocApi {
  final _service = Api();
  final _controlador = BehaviorSubject();

  Stream get saida => _controlador.stream;
  Sink get entrada => _controlador.sink;

  callAll() async {
    // await _service.getAll().then(entrada.add);
    await _service.getAll();
  }

  void dispose() {
    _controlador.close();
  }
}
