import 'package:flutter/material.dart';
import 'package:conversor/Temperatura.dart';

class MenuLateral extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MenuState();
  }
}

class MenuState extends State<MenuLateral>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor de Unidades'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Image.network('http://www.itcelaya.edu.mx/recursos/14185846786897logo%20tecno%20nuevo%20R-04.png',width: 150, height: 150)
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('ISC. Rubensin Torres Frias'),
              accountEmail: Text('ruben.torres@itcelaya.edu.mx'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            ListTile(
              title: Text("Temperatura"),
              trailing: Icon(Icons.add_circle_outline),
              onTap: (){
                //Navigator.pushNamed(context, '/temp');
                Navigator.push(context,MaterialPageRoute(builder: (context) => Temperatura()));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Masa"),
              trailing: Icon(Icons.add_circle_outline),
              onTap: (){
                Navigator.pushNamed(context, '/masa');
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Volumen"),
              trailing: Icon(Icons.add_circle_outline),
              onTap: (){
                Navigator.pushNamed(context, '/vol');
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Longitud"),
              trailing: Icon(Icons.add_circle_outline),
              onTap: (){
                Navigator.pushNamed(context, '/long');
                //Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}