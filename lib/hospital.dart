import 'dart:ffi';

import 'package:flutter/material.dart';

import 'api/routes.dart';

class Hospital extends StatefulWidget {
  const Hospital({Key? key}) : super(key: key);

  @override
  _Hospital createState() => _Hospital();
}

class _Hospital extends State {
  // int _counter = 0;
  // final _bloc = BlocApi();
  var _valores = [];

  _callValues() async {
    var lista = await Api().getIdName()();
    var valores = lista;
    return valores;
  }

  void _increment() async {
    var lista = await Api().getIdName()();
    var valores = lista;
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
    // var valores = _callValues();
    // This method is rerun every time setState is called,
    // for instance, as done by the _increment method above.
    // The Flutter framework has been optimized to make
    // rerunning build methods fast, so that you can just
    // rebuild anything that needs updating rather than
    // having to individually changes instances of widgets.

    return FutureBuilder(
        future: _callValues(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Text("Carregando...");
          } else {
            final valores = snapshot.data;
            return ListView.builder(
              itemCount: 13,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text('' + valores.toString()),
                  ),
                );
              },
            );
          }
        });

    //   children: [
    //     // for (var i = 0; i < _valores.length; i++){
    //     for (var item in _valores)
    //       ListTile(
    //         leading: Icon(Icons.map),
    //         title: Text('Mapa'),
    //       ),

    //     // },
    //     Center(
    //       // alignment: Alignment.center,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           ElevatedButton(
    //             onPressed: _increment,
    //             child: Text('Acessar Valores'),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // ),
  }
}
