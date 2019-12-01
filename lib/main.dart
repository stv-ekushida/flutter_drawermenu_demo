import 'package:flutter/material.dart';
import 'package:flutter_drawermenu_demo/routes/Routes.dart';
import 'package:flutter_drawermenu_demo/pages/HomePage.dart';
import 'package:flutter_drawermenu_demo/pages/ContactsPage.dart';
import 'package:flutter_drawermenu_demo/pages/NotesPage.dart';
import 'package:flutter_drawermenu_demo/pages/EventsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
      routes: {
        Routes.homes: (context) => HomePage(),
        Routes.contacts: (context) => ContactsPage(),
        Routes.events: (context) => EventsPage(),
        Routes.notes: (context) => NotesPage()
      },
    );
  }
}