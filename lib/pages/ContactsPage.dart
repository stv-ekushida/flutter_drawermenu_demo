import 'package:flutter/material.dart';
import 'package:flutter_drawermenu_demo/widgets/AppDrawer.dart';

class ContactsPage extends StatelessWidget {

  static const String routeName = '/contacts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
        ),
        drawer: AppDrawer(),
        body: Center(
            child: Text("Contact")
        )
    );
  }
}