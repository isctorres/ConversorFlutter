import 'package:flutter/material.dart';

class Temperatura extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TemperaturaState();
  }
}

class TemperaturaState extends State<Temperatura>{

  TextEditingController CFController = TextEditingController();
  TextEditingController FCController = TextEditingController();
  double resultado;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text('TEMPERATURA'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text('Centrigrados a Fahrenheit'),
                  //subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                TextField(
                    controller: CFController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    )
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Convertir'),
                        onPressed: () {
                          resultado = double.parse(CFController.text) * 1.8 + 32;
                          return showDialog(
                              context: context,
                              builder: (context){ return AlertDialog(content: Text("Resultado : $resultado"));
                              }
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text('Fahrenheit a Centrigrados'),
                ),
                TextField(
                    controller: FCController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    )
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Convertir'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}