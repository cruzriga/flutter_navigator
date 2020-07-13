import 'package:flutter/material.dart';
import 'package:flutternavigator/Drawer.dart';
class Home extends StatelessWidget {
  static const String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Página principal'),
          backgroundColor: Colors.blueGrey,
        ),
        drawer: SlideMenu(context),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                  leading: Icon(Icons.description),
                  title: Text('Login form Bloc pattern'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){Navigator.pushNamed(context, '/login_bloc');}
              ),
            ),

            Card(
              child: ListTile(
                  leading: Icon(Icons.description),
                  title: Text('Login form'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){Navigator.pushNamed(context, '/login_form');}
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.description),
                  title: Text('2. Json List'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){Navigator.pushNamed(context, '/list_json');}
              ),
            ),
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
