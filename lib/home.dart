import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = '/';
  @override

  Drawer main_menu(BuildContext context){
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: Text('Ajustes', style: TextStyle(fontSize: 20.0))),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuración'),
              onTap: (){Navigator.pushNamed(context, '/configuracion');}
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Página principal'),
              onTap: (){Navigator.pushNamed(context, '/');}
          ),
          ListTile(
              leading: Icon(Icons.battery_unknown),
              title: Text('Batería'),
              onTap: (){Navigator.pushNamed(context, '/bateria');}
          ),
          AboutListTile(
              child: Text("Información"),
              applicationIcon: Icon(Icons.favorite),
              applicationVersion: "v1.0.0",
              icon: Icon(Icons.info)
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Página principal')
        ),
        drawer: main_menu(context),
        body: Text('Home')
    );
  }
}
