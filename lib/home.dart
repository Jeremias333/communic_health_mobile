import 'package:communic_health_mobile/api/routes.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  _HomeMain createState() => _HomeMain();
}

class _HomeMain extends State {
  // int _counter = 0;
  // final _bloc = BlocApi();
  var _valores = "Clique para chamar";

  void _increment() async {
    var lista = await Api().getAll();
    var valores = lista[3].toString();
    setState(() {
      // This call to setState tells the Flutter framework
      // that something has changed in this State, which
      // causes it to rerun the build method below so that
      // the display can reflect the updated values. If you
      // change _counter without calling setState(), then
      // the build method won't be called again, and so
      // nothing would appear to happen.
      // _counter++;
      // _bloc.callAll();

      _valores = valores;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called,
    // for instance, as done by the _increment method above.
    // The Flutter framework has been optimized to make
    // rerunning build methods fast, so that you can just
    // rebuild anything that needs updating rather than
    // having to individually changes instances of widgets.
    return Scaffold(
      //

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              // alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Align(
                      child: new Text('$_valores'),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              // alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _increment,
                    child: Text('Acessar Valores'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
