import 'package:flutter/material.dart';
Drawer SlideMenu(BuildContext context){
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueGrey),
            child: Text('Ajustes',
                style: TextStyle(fontSize: 20.0, color: Colors.white)
            )
        ),
        ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contactos'),
            onTap: (){Navigator.pushNamed(context, '/contactos');}
        ),
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