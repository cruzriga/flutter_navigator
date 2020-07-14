import 'package:flutter/material.dart';
import 'package:flutternavigator/login_form/login_form.dart';
import 'package:flutternavigator/login_form/login_form_block.dart';
import 'package:flutternavigator/screens/battery.dart';
import 'package:flutternavigator/screens/contacts.dart';
import 'package:flutternavigator/screens/infinite_scroll.dart';
import 'package:flutternavigator/screens/page_view_simple.dart';
import 'package:flutternavigator/screens/settigns.dart';
import 'package:flutternavigator/segundo/alert_page.dart';
import 'package:flutternavigator/segundo/avatar_page.dart';
import 'package:flutternavigator/segundo/card_page.dart';
import 'package:flutternavigator/segundo/list_json.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/login_bloc'       : (BuildContext context) => LoginFormBloc(),
    '/login_form'       : (BuildContext context) => LoginForm(),
    '/list_json'        : (BuildContext context) => ListJson(),
    '/list_json/alert'  : (BuildContext context) => AlertPage(),
    '/list_json/avatar' : (BuildContext context) => AvatarPage(),
    '/list_json/card'   : (BuildContext context) => CardPage(),
    '/infinite_scroll'  : (BuildContext context) => InfiniteScroll(),
    '/page_view_simple' : (BuildContext context) => PageViewSimple(),
    '/page_view_infinite': (BuildContext context)=> PageViewInfinite(),
    Contacts.routeName  : (BuildContext context) => Contacts(),
    Settings.routeName  : (BuildContext context) => Settings(),
    Battery.routeName   : (BuildContext context) => Battery()
  };
}