import 'package:flutter/material.dart';
import 'package:flutter_drawermenu_demo/widgets/AppDrawer.dart';

class EventsPage extends StatelessWidget {
  static const String routeName = '/events';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Events"),
        ),
        drawer: AppDrawer(),
        body: Center(child: Text("Events")));
  }
}