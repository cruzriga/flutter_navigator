import 'package:flutter/material.dart';
import 'package:flutternavigator/model/contact_model.dart';
class ContactItem extends StatelessWidget {
  final String name;
  final String mail;
  ContactItem({this.name, this.mail});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(mail),
      leading: CircleAvatar(
        child: Text(name[0]),
      ),
    );
  }
}
