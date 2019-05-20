import 'package:flutter/material.dart';
import 'package:conversor/MenuLateral.dart';
import 'package:conversor/Temperatura.dart';
import 'package:conversor/Masa.dart';
import 'package:conversor/Longitud.dart';
import 'package:conversor/Volumen.dart';

void main() => runApp(Conversor());

class Conversor extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ConversorState();
  }
}
class ConversorState extends State<Conversor>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      initialRoute: '/',
      routes: {
        //'/': (context) => Conversor(),
        '/temp' : (context) => Temperatura(),
        '/masa' : (context) => Masa(),
        '/vol' : (context) => Volumen(),
        '/long' : (context) => Longitud(),
      },

      title: "Conversor de Unidades",
      home: MenuLateral(),
    );
  }
}
