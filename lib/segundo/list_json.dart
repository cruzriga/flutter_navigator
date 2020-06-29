import 'package:flutter/material.dart';
import 'package:flutternavigator/segundo/alert_page.dart';
import 'package:flutternavigator/segundo/providers/menu_provider.dart';
import 'package:flutternavigator/segundo/utils/icono_string_uitl.dart';
class ListJson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _lista());
  }

  Widget _lista(){
   /*menuProvider.cargarData().then((opciones){
      print('_lista');
      print(opciones);
   });
    return ListView(
      children: _listaItems(),
    );*/

   return FutureBuilder(
     future: menuProvider.cargarData(),
     initialData: [],
     builder: (BuildContext context, AsyncSnapshot <List<dynamic>> snapshot){
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
     },
   );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context){
    final List<Widget> opciones = [];
    data.forEach((o) {
      final widgetTemp = ListTile(
        title: Text(o['texto']),
        leading: getIcon(o['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueGrey),
        onTap: () {
          /*Navigator.push(context, MaterialPageRoute(
            builder: (context) =>(AlertPage())
          ));*/
          Navigator.pushNamed(context, '/list_json/${o['ruta']}');
        }
      );

      opciones..add(widgetTemp)
              ..add(Divider());
    });

    return opciones;
  }
}
