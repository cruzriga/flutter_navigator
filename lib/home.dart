import 'package:flutter/material.dart';
import 'package:flutternavigator/screens/contacts.dart';
class Home extends StatelessWidget {
  static const String routeName = '/';
  @override

  Drawer main_menu(BuildContext context){
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

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Página principal'),
          backgroundColor: Colors.blueGrey,
        ),
        drawer: main_menu(context),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                  leading: Icon(Icons.playlist_play),
                  title: Text('Infinite Scroll'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){Navigator.pushNamed(context, '/infinite_scroll');}
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.playlist_play),
                  title: Text('PageView Simple'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){Navigator.pushNamed(context, '/page_view_simple');}
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.playlist_play),
                  title: Text('PageView Infinite'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){Navigator.pushNamed(context, '/page_view_infinite');}
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.contacts),
                  title: Text('Contactos'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){Navigator.pushNamed(context, '/contactos');}
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Configuración'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){Navigator.pushNamed(context, '/configuracion');}
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.battery_unknown),
                  title: Text('Batería'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){Navigator.pushNamed(context, '/bateria');}
              ),
            ),
          ],
        )
    );
  }
}
