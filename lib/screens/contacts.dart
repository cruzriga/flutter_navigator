import 'package:flutter/material.dart';
import 'package:flutternavigator/model/contact_model.dart';
import 'package:flutternavigator/screens/contacts/contacts_items.dart';

class Contacts extends StatelessWidget {
  static const String  routeName = '/contactos';

  buildList(){
    return [
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Cruz Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Yuvenis Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Andree', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
      {'name' :'Mario Rivera', 'mail': 'cruzriga@gmail.com'},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contactos'),
      ),
      body: ListView(
        children: buildList()
            .map<ListTile>((contact) => ListTile(
                  title: Text(contact['name']),
                  subtitle: Text(contact['mail']),
                  leading: CircleAvatar(
                    child: Text(contact['name'][0]),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
